import matplotlib
import matplotlib.pyplot as plt
import numpy as np
import math
import sys, os
import matplotlib.ticker as ticker

hatches = list(map(lambda x: x * 5, ['', '/', '+', '\\', '*']))

# CSV format
graph_name = os.path.basename(__file__[:-3])

csv_name = 'data/{}.csv'.format(graph_name)
with open(csv_name,'r') as f:
    dataIn = list(map(lambda x: x.split(','), f.read().split('\n')))
labels = dataIn[0][1:]
dataIn = dataIn[1:]

plt.style.use('seaborn-paper')
matplotlib.use("pgf")

matplotlib.rcParams.update({
    "pgf.texsystem": "pdflatex",
    'font.family': 'serif',
    'font.serif': ['Time New Roman'] + plt.rcParams['font.serif'],
    'font.size'         : 10,
    'text.usetex': True,
    'pgf.rcfonts': False,
    'figure.figsize': (1.56,1.56)
})


xtics = []
data = {}

for l in labels:
    data[l] = []

for entry in dataIn:
    if entry[0] == '':
        continue
    
    xtics.append(int(entry[0]))
    for i in range(0,len(labels)):
        if entry[i+1] == '':
            continue
        data[labels[i]].append(float(entry[i+1]))
        
colors = ['C0', 'C2', 'C1']
for i, l in enumerate(labels):
    plt.plot(xtics[:len(data[l])], data[l], label=l, marker='o', markersize=3, color=colors[i])
    

plt.legend(loc='upper left',
    #fontsize='medium',
    handlelength=0.8,
    columnspacing=0.8,
    labelspacing=0.1,
    ncol=1,
    bbox_to_anchor=(-0.05, 1.03),
    frameon=False)

#plt.ticklabel_format(style='sci', axis='y', scilimits=(0,0))
plt.yticks([0, 10, 20, 30, 40, 50])
plt.xticks([1, 2, 3, 4, 5, 6])
plt.xlabel("Index Depth")
plt.ylabel("Average Latency ($\mu$s)")


plt.subplots_adjust(
    top = 0.98, bottom = 0.25,
    left = 0.27, right = 0.98
    )

print("done")
plt.savefig('data/{}.pdf'.format(graph_name))
#plt.savefig('data/{}.pgf'.format(graph_name))