if [ "$(uname -r)" !=  "5.12.0-hrp" ]; then
    printf "Not in HRP kernel. Please run the following commands to boot into HRP kernel:\n"
    printf "    sudo grub-reboot \"Advanced options for Ubuntu>Ubuntu, with Linux 5.12.0-hrp\"\n"
    printf "    sudo reboot\n"
    exit 1
fi

SCRIPT_PATH=`realpath $0`
EVAL_PATH=`dirname $SCRIPT_PATH`
BASE_DIR=`realpath $EVAL_PATH/../../`
WT_PATH="$BASE_DIR/benchmark/wiredtiger-hrp"
YCSB_PATH="$BASE_DIR/benchmark/My-YCSB"
YCSB_CONFIG_PATH="$YCSB_PATH/wiredtiger/config/test.yaml"
UTILS_PATH="$BASE_DIR/utils"
MOUNT_POINT="/mnt/hrp"
DB_PATH="$MOUNT_POINT/tigerhome"

DEV_NAME="/dev/nvme0n1"
if [ ! -z $1 ]; then
    DEV_NAME=$1
fi
printf "DEV_NAME=$DEV_NAME\n"

pushd $BASE_DIR/benchmark
./build_and_install_wiredtiger-hrp.sh 1> /dev/null 2> /dev/null
./build_and_install_ycsb.sh 1> /dev/null 2> /dev/null
popd

# Check whether WiredTiger is built
if [ ! -e "$WT_PATH/wt" ]; then
    printf "Cannot find WiredTiger binary. Please build WiredTiger first.\n"
    exit 1
fi
# Check whether My-YCSB is built
if [ ! -e "$YCSB_PATH/build/init_wt" ]; then
    printf "Cannot find My-YCSB binary. Please build My-YCSB first.\n"
    exit 1
fi

# Disable CPU frequency scaling
$UTILS_PATH/disable_cpu_freq_scaling.sh

# Mount disk
$UTILS_PATH/mount_disk.sh $DEV_NAME $MOUNT_POINT

pushd $YCSB_PATH/build

printf "Creating database folder...\n"
sudo rm -rf $MOUNT_POINT/*
sudo mkdir -p $DB_PATH
sed -i 's#data_dir: .*#data_dir: "'$DB_PATH'"#' $YCSB_CONFIG_PATH
export WT_BPF_PATH="$WT_PATH/bpf_prog/wt_bpf.o"

printf "Creating a small WiredTiger database...\n"
sudo -E ./init_wt $YCSB_CONFIG_PATH

printf "Running a short YCSB A experiment with HRP enabled...\n"
sudo -E ./run_wt $YCSB_CONFIG_PATH

popd
printf "Done.\n"