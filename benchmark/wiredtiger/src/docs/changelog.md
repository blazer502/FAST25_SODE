WiredTiger Change Log
=====================

Ticket reference tags refer to tickets in the MongoDB JIRA tracking system:
https://jira.mongodb.org

WiredTiger release 3.2.1, 2019-08-27
------------------------------------

See the upgrading documentation for details of API and behavior changes.

Significant changes:
* [WT-3968](https://jira.mongodb.org/browse/WT-3968)	Use compression ratio to tune page sizes
* [WT-4156](https://jira.mongodb.org/browse/WT-4156)	Add a new salvage API option to wiredtiger_open
* [WT-4192](https://jira.mongodb.org/browse/WT-4192)	Remove support for raw compression in WiredTiger
* [WT-4426](https://jira.mongodb.org/browse/WT-4426)	Change WiredTiger data format to optionally include timestamps in cells
* [WT-4447](https://jira.mongodb.org/browse/WT-4447)	Add a quota like system to manage I/O per subsystem
* [WT-4494](https://jira.mongodb.org/browse/WT-4494)	Support import of of standalone WiredTiger files
* [WT-4670](https://jira.mongodb.org/browse/WT-4670)	Remove support for LevelDB APIs in WiredTiger
* [WT-4765](https://jira.mongodb.org/browse/WT-4765)	Remove support for Helium/Levyx data sources in WiredTiger
* [WT-4803](https://jira.mongodb.org/browse/WT-4803)	Implement file_max configuration for Cache Overflow mechanism
* [WT-4913](https://jira.mongodb.org/browse/WT-4913)	Fix the Windows CRC32 on blocks that aren't 8B aligned and/or multiples of 8B

See JIRA changelog for a full listing:
https://jira.mongodb.org/projects/WT/versions/21117
https://jira.mongodb.org/projects/WT/versions/22515

WiredTiger release 3.1.0, 2018-07-12
------------------------------------

See the upgrading documentation for details of API and behavior changes.

See JIRA changelog for a full listing:
https://jira.mongodb.org/projects/WT/versions/19708

WiredTiger release 3.0.0, 2018-01-08
------------------------------------

See the upgrading documentation for details of API and behavior changes.

Significant changes:
* [WT-3039](https://jira.mongodb.org/browse/WT-3039)	Change the log file format to record a previous LSN record
* [WT-3181](https://jira.mongodb.org/browse/WT-3181)	Add support for application defined transaction IDs via a mechanism called timestamps.
* [WT-3310](https://jira.mongodb.org/browse/WT-3310)	Add support to WT_SESSION::alter to change table log setting
* [WT-3389](https://jira.mongodb.org/browse/WT-3389)	Restructure page split code to hold a split generation for the entire operation.
* [WT-3406](https://jira.mongodb.org/browse/WT-3406)	Fix a bug in reconciliation so that it ignores concurrent updates.
* [WT-3418](https://jira.mongodb.org/browse/WT-3418)	Fix a block manager race in tree close/open
* [WT-3435](https://jira.mongodb.org/browse/WT-3435)	Improvements to the cache overflow mechanism aka lookaside
* [WT-3437](https://jira.mongodb.org/browse/WT-3437)	Improvements to auto tuning of number of eviction workers
* [WT-3440](https://jira.mongodb.org/browse/WT-3440)	Add a log record when starting a checkpoint.
* [WT-3461](https://jira.mongodb.org/browse/WT-3461)	Avoid hangs when system clocks move backwards by using CLOCK_MONOTONIC for pthread_cond_timedwait if possible.
* [WT-3490](https://jira.mongodb.org/browse/WT-3490)	Fix a bug in WT_CURSOR.modify unaligned size_t access.
* [WT-3495](https://jira.mongodb.org/browse/WT-3495)	Fix a bug so we don't ftruncate if log cursors are open
* [WT-3497](https://jira.mongodb.org/browse/WT-3497)	Improve logging message when hitting the configured session limits
* [WT-3537](https://jira.mongodb.org/browse/WT-3537)	Split pages in memory when nothing can be written
* [WT-3556](https://jira.mongodb.org/browse/WT-3556)	Remove wtstats support
* [WT-3681](https://jira.mongodb.org/browse/WT-3681)	Change recovery so that it doesn't truncate the last log file
* [WT-3683](https://jira.mongodb.org/browse/WT-3683)	Allow eviction of clean pages with history when cache is stuck
* [WT-3710](https://jira.mongodb.org/browse/WT-3710)	Get a page-level lock to ensure page splits are single threaded
* [WT-3752](https://jira.mongodb.org/browse/WT-3752)	Allow trimming of obsolete modify updates.

See JIRA changelog for a full listing:
https://jira.mongodb.org/projects/WT/versions/18401

WiredTiger release 2.9.3, 2017-06-27
------------------------------------

See the upgrading documentation for details of API and behavior changes.

Significant changes:
* [WT-2972](https://jira.mongodb.org/browse/WT-2972)       Add an interface allowing partial updates to existing values
* [WT-3063](https://jira.mongodb.org/browse/WT-3063)       Add an interface allowing reservation of records for read-modify-write
* [WT-3142](https://jira.mongodb.org/browse/WT-3142)       Add a workload generator application
* [WT-3160](https://jira.mongodb.org/browse/WT-3160)       Improve eviction of internal pages from idle trees
* [WT-3245](https://jira.mongodb.org/browse/WT-3245)       Avoid hangs on shutdown when a utility thread encounters an error
* [WT-3258](https://jira.mongodb.org/browse/WT-3258)       Improve visibility into thread wait time due to pages exceeding memory_page_max
* [WT-3263](https://jira.mongodb.org/browse/WT-3263)       Allow archive on restart/recovery if clean shutdown
* [WT-3287](https://jira.mongodb.org/browse/WT-3287)       Review WiredTiger internal panic checks
* [WT-3292](https://jira.mongodb.org/browse/WT-3292)       Review/cleanup full-barrier calls in WiredTiger
* [WT-3296](https://jira.mongodb.org/browse/WT-3296)       LAS table fixes/improvements
* [WT-3327](https://jira.mongodb.org/browse/WT-3327)       Checkpoints can hang if time runs backward
* [WT-3345](https://jira.mongodb.org/browse/WT-3345)       Improve rwlock scaling
* [WT-3373](https://jira.mongodb.org/browse/WT-3373)       Access violation due to a bug in internal page splitting
* [WT-3379](https://jira.mongodb.org/browse/WT-3379)       Change when pages can be split to avoid excessively slowing some operations

See JIRA changelog for a full listing:
https://jira.mongodb.org/browse/WT/fixforversion/18291

WiredTiger release 2.9.2, 2017-05-25
------------------------------------

See the upgrading documentation for details of API and behavior changes.

Significant changes:
* [SERVER-16796](https://jira.mongodb.org/browse/SERVER-16796)  Increase logging activity for journal recovery operations
* [SERVER-28168](https://jira.mongodb.org/browse/SERVER-28168)  Cannot start or repair MongoDB after unexpected shutdown.
* [SERVER-28194](https://jira.mongodb.org/browse/SERVER-28194)  Fix a bug where a missing WiredTiger.turtle file can result in data loss
* [WT-98](https://jira.mongodb.org/browse/WT-98)         Update the current cursor value without a search
* [WT-2439](https://jira.mongodb.org/browse/WT-2439)       Enhance reconciliation page layout
* [WT-2898](https://jira.mongodb.org/browse/WT-2898)       Improve performance of eviction-heavy workloads by dynamically controlling the number of eviction threads
* [WT-3097](https://jira.mongodb.org/browse/WT-3097)       Race on reconfigure or shutdown can lead to waiting for statistics log server
* [WT-3106](https://jira.mongodb.org/browse/WT-3106)       Add truncate support to command line wt utility
* [WT-3114](https://jira.mongodb.org/browse/WT-3114)       Avoid archiving log files immediately after recovery
* [WT-3115](https://jira.mongodb.org/browse/WT-3115)       Change the dhandle lock to a read/write lock
* [WT-3127](https://jira.mongodb.org/browse/WT-3127)       Fix a bug with CPU yield calls don't necessarily imply memory barriers
* [WT-3135](https://jira.mongodb.org/browse/WT-3135)       Fix a bug with search_near() for index with custom collator
* [WT-3137](https://jira.mongodb.org/browse/WT-3137)       Fix a hang in __log_slot_join/__log_slot_switch_internal
* [WT-3144](https://jira.mongodb.org/browse/WT-3144)       Fix a bug where random cursor returns not-found when descending to an empty page
* [WT-3148](https://jira.mongodb.org/browse/WT-3148)       Improve eviction efficiency with many small trees
* [WT-3149](https://jira.mongodb.org/browse/WT-3149)       Change eviction to start new walks from a random place in the tree
* [WT-3150](https://jira.mongodb.org/browse/WT-3150)       Reduce impact of checkpoints on eviction server
* [WT-3152](https://jira.mongodb.org/browse/WT-3152)       Convert table lock from a spinlock to a read write lock
* [WT-3157](https://jira.mongodb.org/browse/WT-3157)       Fix a bug in checkpoint/transaction integrity issue when writes fail.
* [WT-3158](https://jira.mongodb.org/browse/WT-3158)       Fix structure packing on Windows.
* [WT-3188](https://jira.mongodb.org/browse/WT-3188)       Fix error handling in logging where fatal errors could lead to a hang
* [WT-3193](https://jira.mongodb.org/browse/WT-3193)       Close a race between verify opening a handle and eviction visiting it
* [WT-3206](https://jira.mongodb.org/browse/WT-3206)       Fix a bug where core dump happened on NULL page index
* [WT-3218](https://jira.mongodb.org/browse/WT-3218)       Fix a bug that could lead to unexpected checkpoint ordering failures
* [WT-3243](https://jira.mongodb.org/browse/WT-3243)       Reorder log slot release so joins don't wait on IO
* [WT-3262](https://jira.mongodb.org/browse/WT-3262)       Stop making schema operations wait for cache

See JIRA changelog for a full listing:
https://jira.mongodb.org/browse/WT/fixforversion/17874


WiredTiger release 2.9.1, 2016-12-22
------------------------------------

New features and API changes; refer to the API documentation for full details:

* [SERVER-26545](https://jira.mongodb.org/browse/SERVER-26545)	Remove fixed-size limitation on WiredTiger hazard pointers. See the upgrading documentation for details
* [WT-283](https://jira.mongodb.org/browse/WT-283)	Add a new WT_SESSION::alter method that can be used to reconfigure table metadata
* [WT-2670](https://jira.mongodb.org/browse/WT-2670)	Change the default file system access pattern advice for data files from random to no advice. Add access_pattern_hint configuration option for WT_SESSION::create API that can be used to advise the file system of expected access semantics. See the upgrading documentation for details.
* [WT-3034](https://jira.mongodb.org/browse/WT-3034)	Add support for including updates when reading from named snapshots

Significant changes and bug fixes:

* [WT-2960](https://jira.mongodb.org/browse/WT-2960)	Reduce likelihood of using the lookaside file, especially when inserting multi-megabyte values
* [WT-3056](https://jira.mongodb.org/browse/WT-3056)	Allow projected table and join cursors to use primary keys
* [WT-3070](https://jira.mongodb.org/browse/WT-3070)	Fix a bug in search_near on indexes

Other noteworthy changes since the previous release:

* [WT-2336](https://jira.mongodb.org/browse/WT-2336)	Add a test validating schema operations via file system call monitoring
* [WT-2402](https://jira.mongodb.org/browse/WT-2402)	Pad structures to avoid cache line sharing
* [WT-2771](https://jira.mongodb.org/browse/WT-2771)	Add a statistic to track per-btree dirty cache usage
* [WT-2833](https://jira.mongodb.org/browse/WT-2833)	Add projections to wt dump utility
* [WT-2969](https://jira.mongodb.org/browse/WT-2969)	Possible snapshot corruption during compaction
* [WT-3014](https://jira.mongodb.org/browse/WT-3014)	Add GCC/clang support for ELF symbol visibility
* [WT-3021](https://jira.mongodb.org/browse/WT-3021)	Fixes for java log example, raw mode in java, and raw mode in log cursors
* [WT-3025](https://jira.mongodb.org/browse/WT-3025)	Fix error path in log_force_sync
* [WT-3028](https://jira.mongodb.org/browse/WT-3028)	Don't check for blocked eviction with in-memory workloads
* [WT-3030](https://jira.mongodb.org/browse/WT-3030)	Fix a race between scans and splits reading the index hint
* [WT-3037](https://jira.mongodb.org/browse/WT-3037)	Clean up some log slot comments
* [WT-3048](https://jira.mongodb.org/browse/WT-3048)	WiredTiger maximum size warning uses the wrong format
* [WT-3051](https://jira.mongodb.org/browse/WT-3051)	Remove external __wt_hex symbol
* [WT-3052](https://jira.mongodb.org/browse/WT-3052)	Improve search if index hint is wrong
* [WT-3053](https://jira.mongodb.org/browse/WT-3053)	Make Python use internal memory allocation again
* [WT-3054](https://jira.mongodb.org/browse/WT-3054)	Make a PackOutputStream constructor that is compatible with the previous interface.
* [WT-3055](https://jira.mongodb.org/browse/WT-3055)	When an AsyncOp is created, cache the whether the cursor is "raw"
* [WT-3057](https://jira.mongodb.org/browse/WT-3057)	WiredTiger hazard pointers should use the WT_REF, not the WT_PAGE
* [WT-3061](https://jira.mongodb.org/browse/WT-3061)	Syscall testing should support pwrite64 on Linux
* [WT-3064](https://jira.mongodb.org/browse/WT-3064)	Minor tree cleanups: .gitignore, NEWS misspelling
* [WT-3066](https://jira.mongodb.org/browse/WT-3066)	Minor code cleanups
* [WT-3068](https://jira.mongodb.org/browse/WT-3068)	Copy artifacts of test runs in wtperf_run script
* [WT-3068](https://jira.mongodb.org/browse/WT-3068)	Have Jenkins include specific files for copy rather than exclude
* [WT-3069](https://jira.mongodb.org/browse/WT-3069)	Fix LevelDB APIs build failures
* [WT-3071](https://jira.mongodb.org/browse/WT-3071)	Fixed sign-conversion compiler errors in Java and Python SWIG code
* [WT-3075](https://jira.mongodb.org/browse/WT-3075)	Document and enforce that WiredTiger now depends on Python 2.7
* [WT-3078](https://jira.mongodb.org/browse/WT-3078)	Test reconfiguration hang in the statlog server
* [WT-3080](https://jira.mongodb.org/browse/WT-3080)	Python test suite: add elapsed time for tests
* [WT-3082](https://jira.mongodb.org/browse/WT-3082)	Python test suite: shorten default run to avoid timeouts
* [WT-3084](https://jira.mongodb.org/browse/WT-3084)	Fix Coverity resource leak complaint
* [WT-3091](https://jira.mongodb.org/browse/WT-3091)	Add stats to test_perf001 test, so we can investigate what happened when it failed

WiredTiger release 2.9.0, 2016-09-06
------------------------------------

New features and API changes; refer to the API documentation for full details:

* [WT-2360](https://jira.mongodb.org/browse/WT-2360)	Add nesting and disjunction functionality to cursor joins
* [WT-2552](https://jira.mongodb.org/browse/WT-2552)	Add a public API to allow custom filesystem implementations
* [WT-2738](https://jira.mongodb.org/browse/WT-2738)	Remove the ability to change the default checkpoint name. See the upgrading documentation for details.
* [WT-2711](https://jira.mongodb.org/browse/WT-2711)	Change the statistics log configuration options. Restrict where statistics log files can be created to remove security vulnerability. See upgrading documentation for details.
* [WT-2764](https://jira.mongodb.org/browse/WT-2764)	Enhance the checkpoint implementation, which led to a change in default eviction settings. See the upgrading documentation for details.
* [WT-2880](https://jira.mongodb.org/browse/WT-2880)	Add Zstandard compression support
* See the upgrading documentation for information about renamed and removed statistics.

Significant changes and bug fixes:

* [WT-2026](https://jira.mongodb.org/browse/WT-2026)	Fix a bug where in-memory pages were allowed to grow too large
* [WT-2343](https://jira.mongodb.org/browse/WT-2343)	Ensure we cannot rename/drop when a backup cursor is open
* [WT-2520](https://jira.mongodb.org/browse/WT-2520)	Ensure WT_SESSION::verify does not alter tables
* [WT-2576](https://jira.mongodb.org/browse/WT-2576)	Ensure variable-length column-store cannot out-of-order return
* [WT-2664](https://jira.mongodb.org/browse/WT-2664)	Change eviction so any eviction thread can find candidates
* [WT-2702](https://jira.mongodb.org/browse/WT-2702)	Resolve an issue where under high thread load, WiredTiger exceeds cache size
* [WT-2731](https://jira.mongodb.org/browse/WT-2731)	Resolve an issue where raw compression can create pages that are larger than expected
* [WT-2737](https://jira.mongodb.org/browse/WT-2737)	Allow reconciliation to scrub dirty pages rather than evicting them
* [WT-2757](https://jira.mongodb.org/browse/WT-2757)	Fix a bug in column stores where it was not possible to retrieve the new record number after an append
* [WT-2816](https://jira.mongodb.org/browse/WT-2816)	Improve eviction performance

Issues fixed in MongoDB:

* [SERVER-23504](https://jira.mongodb.org/browse/SERVER-23504)	Resolve a resource leak
* [SERVER-23588](https://jira.mongodb.org/browse/SERVER-23588)	Stop using _open_osfhandle on Windows
* [SERVER-23659](https://jira.mongodb.org/browse/SERVER-23659)	Improve log error message at startup
* [SERVER-23661](https://jira.mongodb.org/browse/SERVER-23661)	Fix an issue where $sample takes disproportionately long time on newly created collection
* [SERVER-24306](https://jira.mongodb.org/browse/SERVER-24306)	Fix stall in log_flush switching to new files
* [SERVER-24580](https://jira.mongodb.org/browse/SERVER-24580)	Add more eviction stats to track efficiency
* [SERVER-24580](https://jira.mongodb.org/browse/SERVER-24580)	Enhance eviction when application threads are contributing
* [SERVER-24971](https://jira.mongodb.org/browse/SERVER-24971)	Don't cache buffers after application eviction
* [SERVER-25843](https://jira.mongodb.org/browse/SERVER-25843)	Remove a redundant test
* [SERVER-25845](https://jira.mongodb.org/browse/SERVER-25845)	Resolve an explicit null dereferenced
* [SERVER-25846](https://jira.mongodb.org/browse/SERVER-25846)	Resolve a dereference after null with a check
* [SERVER-26753](https://jira.mongodb.org/browse/SERVER-26753)	Don't spin on a read-lock in a tight loop

Other noteworthy changes since the previous release:

* [WT-2103](https://jira.mongodb.org/browse/WT-2103)	Add incremental backup testing to test/format
* [WT-2330](https://jira.mongodb.org/browse/WT-2330)	Ensure In-memory configurations do not create on-disk collection files
* [WT-2450](https://jira.mongodb.org/browse/WT-2450)	Resolve an issue where salvage releases pages, then explicitly evicts them. Which can race with the eviction server
* [WT-2453](https://jira.mongodb.org/browse/WT-2453)	Add multiple eviction queues
* [WT-2504](https://jira.mongodb.org/browse/WT-2504)	Remove READONLY conditional for base config
* [WT-2505](https://jira.mongodb.org/browse/WT-2505)	Resolve clang analyzer warnings
* [WT-2508](https://jira.mongodb.org/browse/WT-2508)	Ensure test programs should remove test directories on the "clean" target
* [WT-2512](https://jira.mongodb.org/browse/WT-2512)	Change how wtperf throttle values per thread are calculated
* [WT-2513](https://jira.mongodb.org/browse/WT-2513)	Fix a type conversion warning
* [WT-2517](https://jira.mongodb.org/browse/WT-2517)	Resolve incorrect uses of setvbuf on Windows
* [WT-2518](https://jira.mongodb.org/browse/WT-2518)	Optimization of LSM checkpoint handle acquisition
* [WT-2522](https://jira.mongodb.org/browse/WT-2522)	Resolve incorrect format code in message
* [WT-2525](https://jira.mongodb.org/browse/WT-2525)	Miscellaneous cleanups of In-memory configurations
* [WT-2526](https://jira.mongodb.org/browse/WT-2526)	Prevent mixing and matching readonly file-handles and read/write data-handles
* [WT-2528](https://jira.mongodb.org/browse/WT-2528)	Fix a style error in WiredTiger build
* [WT-2529](https://jira.mongodb.org/browse/WT-2529)	Be less aggressive asserting in readonly connections
* [WT-2531](https://jira.mongodb.org/browse/WT-2531)	Resolve a case where in-memory tables are wasting space in truncation
* [WT-2532](https://jira.mongodb.org/browse/WT-2532)	Change the WT_STREAM_APPEND and WT_STREAM_LINE_BUFFER flags as they overlap
* [WT-2533](https://jira.mongodb.org/browse/WT-2533)	Don't let in-memory tables return a zero size
* [WT-2534](https://jira.mongodb.org/browse/WT-2534)	Use atomic add when allocating transaction IDs
* [WT-2535](https://jira.mongodb.org/browse/WT-2535)	Extend test/format to test for transactions reading their writes
* [WT-2537](https://jira.mongodb.org/browse/WT-2537)	Check for an old and new uninitialized LSN for recovery
* [WT-2539](https://jira.mongodb.org/browse/WT-2539)	Make streams a separate handle type from files
* [WT-2540](https://jira.mongodb.org/browse/WT-2540)	Separate stream and file handle methods
* [WT-2542](https://jira.mongodb.org/browse/WT-2542)	Resolve fixed-length column store reconciliation overwriting original values
* [WT-2544](https://jira.mongodb.org/browse/WT-2544)	Fix eviction stats when clear is used
* [WT-2546](https://jira.mongodb.org/browse/WT-2546)	Change evict server to be smarter when it decides whether or not to evict pages
* [WT-2547](https://jira.mongodb.org/browse/WT-2547)	Add eviction testing configurations for 1 thread
* [WT-2548](https://jira.mongodb.org/browse/WT-2548)	Cap the amount of data handed to raw compression
* [WT-2550](https://jira.mongodb.org/browse/WT-2550)	Add support for raw mode cursors in java
* [WT-2553](https://jira.mongodb.org/browse/WT-2553)	Add some In-memory documentation and stress testing
* [WT-2556](https://jira.mongodb.org/browse/WT-2556)	Fix a typo in the Java example code
* [WT-2557](https://jira.mongodb.org/browse/WT-2557)	Ensure that we truncate logs before closing backup cursor
* [WT-2558](https://jira.mongodb.org/browse/WT-2558)	Reorganize WT_PAGE structure
* [WT-2559](https://jira.mongodb.org/browse/WT-2559)	Resolve a potential segfault in Windows logging code
* [WT-2560](https://jira.mongodb.org/browse/WT-2560)	Add a rwlock to protect transaction state, don't spin on this lock
* [WT-2562](https://jira.mongodb.org/browse/WT-2562)	Add sleep loop to adapt for slow machines like PPC
* [WT-2565](https://jira.mongodb.org/browse/WT-2565)	Further limit the amount of data passed to raw compression
* [WT-2566](https://jira.mongodb.org/browse/WT-2566)	Add explicit memory barriers to Lock/unlock operations
* [WT-2567](https://jira.mongodb.org/browse/WT-2567)	Add a check to see if logging is enabled for truncate rather than assuming it is
* [WT-2568](https://jira.mongodb.org/browse/WT-2568)	Add a backward compatible constructor for PackInputStream
* [WT-2569](https://jira.mongodb.org/browse/WT-2569)	Ensure __win_handle_read is followed by a call to GetLastError()
* [WT-2570](https://jira.mongodb.org/browse/WT-2570)	Minor lint and cleanups to code
* [WT-2571](https://jira.mongodb.org/browse/WT-2571)	Join code clean up
* [WT-2572](https://jira.mongodb.org/browse/WT-2572)	Ensure test/format doesn't select an incompatible set of options for in-memory options configured
* [WT-2573](https://jira.mongodb.org/browse/WT-2573)	Resolve a potential case where a double free can occur
* [WT-2574](https://jira.mongodb.org/browse/WT-2574)	Ensure test/format frees all allocated configure memory
* [WT-2576](https://jira.mongodb.org/browse/WT-2576)	Ensure variable-length column-store cannot out-of-order return
* [WT-2577](https://jira.mongodb.org/browse/WT-2577)	Resolve a potential double-free following an in-memory split
* [WT-2579](https://jira.mongodb.org/browse/WT-2579)	Change so diagnostic only code can use file streams directly
* [WT-2580](https://jira.mongodb.org/browse/WT-2580)	Fix potential SWIG naming conflict in Java
* [WT-2581](https://jira.mongodb.org/browse/WT-2581)	Resolve a case where we fail to track saved updates during a page split
* [WT-2582](https://jira.mongodb.org/browse/WT-2582)	Fix a case where eviction can return WT_RESTART when running in-memory
* [WT-2584](https://jira.mongodb.org/browse/WT-2584)	Change to not use periods at the end of error messages
* [WT-2586](https://jira.mongodb.org/browse/WT-2586)	Fix examples/ex_config
* [WT-2589](https://jira.mongodb.org/browse/WT-2589)	Ensure we clear the cursor statistics for LAS when 'clear' is set
* [WT-2592](https://jira.mongodb.org/browse/WT-2592)	Fix joins for the non-recno, non-raw case
* [WT-2593](https://jira.mongodb.org/browse/WT-2593)	Free the dirlist at the end of the function
* [WT-2595](https://jira.mongodb.org/browse/WT-2595)	Fix compiler warning in packing test
* [WT-2598](https://jira.mongodb.org/browse/WT-2598)	Change so that in-memory has faster lookup on file names
* [WT-2599](https://jira.mongodb.org/browse/WT-2599)	Split out the checksum code from the support directory
* [WT-2600](https://jira.mongodb.org/browse/WT-2600)	Clean up test program includes
* [WT-2602](https://jira.mongodb.org/browse/WT-2602)	In LSM, use the chunk size to set maximum page size in memory
* [WT-2605](https://jira.mongodb.org/browse/WT-2605)	Add C tests used in testing joins
* [WT-2609](https://jira.mongodb.org/browse/WT-2609)	Resolve incorrect "skips API_END call" error
* [WT-2610](https://jira.mongodb.org/browse/WT-2610)	Reduce hazard pointer array size
* [WT-2611](https://jira.mongodb.org/browse/WT-2611)	Modify wtperf to handle escaped quotes
* [WT-2612](https://jira.mongodb.org/browse/WT-2612)	Ensure the  dist/s_prototypes script does not create a debugging file
* [WT-2613](https://jira.mongodb.org/browse/WT-2613)	Add WT_UNUSED to a variable to fix Windows compilation
* [WT-2615](https://jira.mongodb.org/browse/WT-2615)	Enabling checkpoints in test/format leads to reduced concurrency
* [WT-2616](https://jira.mongodb.org/browse/WT-2616)	Fix a deadlock with in-memory size lookups
* [WT-2617](https://jira.mongodb.org/browse/WT-2617)	Don't use u_int in the example code. It's not Windows native
* [WT-2621](https://jira.mongodb.org/browse/WT-2621)	Fix missing parentheses on call to __wt_errno
* [WT-2622](https://jira.mongodb.org/browse/WT-2622)	Clear old position for all random lookups
* [WT-2624](https://jira.mongodb.org/browse/WT-2624)	Fix example program build with MSVC 2013
* [WT-2626](https://jira.mongodb.org/browse/WT-2626)	Fix MSVC 2015 snprintf redefinition
* [WT-2627](https://jira.mongodb.org/browse/WT-2627)	Resolve Coverity complaints
* [WT-2628](https://jira.mongodb.org/browse/WT-2628)	Ensure reconciliation doesn't return without unlocking the page lock
* [WT-2629](https://jira.mongodb.org/browse/WT-2629)	Ensure stacks are not executable in assembly source
* [WT-2630](https://jira.mongodb.org/browse/WT-2630)	Rename pluggable filesystem methods to avoid reserved names
* [WT-2631](https://jira.mongodb.org/browse/WT-2631)	Ensure nullptr is not passed for parameters marked with attribute non-null
* [WT-2632](https://jira.mongodb.org/browse/WT-2632)	Tolerate EBUSY when a checkpoint cursor is open
* [WT-2637](https://jira.mongodb.org/browse/WT-2637)	Update file-extension documentation to cover not-supported cases
* [WT-2638](https://jira.mongodb.org/browse/WT-2638)	Add extension to the Windows file system implementation
* [WT-2644](https://jira.mongodb.org/browse/WT-2644)	Fix 'wt load -r' (rename) with LSM
* [WT-2645](https://jira.mongodb.org/browse/WT-2645)	Move the complexity of dump from the dump utility to the metadata cursor
* [WT-2646](https://jira.mongodb.org/browse/WT-2646)	Add checkpoint_wait configuration option to drop
* [WT-2648](https://jira.mongodb.org/browse/WT-2648)	Change cache-line alignment for new ports
* [WT-2651](https://jira.mongodb.org/browse/WT-2651)	Fix a Coverity found resource leak
* [WT-2652](https://jira.mongodb.org/browse/WT-2652)	Remove unnecessary wt_ftruncate call
* [WT-2653](https://jira.mongodb.org/browse/WT-2653)	Add display of device configuration to custom file-system example
* [WT-2656](https://jira.mongodb.org/browse/WT-2656)	Fix GCC 4.7 compiler warnings
* [WT-2658](https://jira.mongodb.org/browse/WT-2658)	Ensure we only include PPC-specific files in PPC builds
* [WT-2659](https://jira.mongodb.org/browse/WT-2659)	Assorted lint and cleanup to csuite tests
* [WT-2660](https://jira.mongodb.org/browse/WT-2660)	Fix a hang between eviction and connection close
* [WT-2662](https://jira.mongodb.org/browse/WT-2662)	For spell check, strip out double quote literals, they confuse aspell
* [WT-2664](https://jira.mongodb.org/browse/WT-2664)	Add ability for eviction workers to populate eviction queues
* [WT-2665](https://jira.mongodb.org/browse/WT-2665)	Limit allocator fragmentation from the WiredTiger cache
* [WT-2667](https://jira.mongodb.org/browse/WT-2667)	Add fops to Evergreen testing for Windows and Linux
* [WT-2668](https://jira.mongodb.org/browse/WT-2668)	Create join statistics that are useful and are easy to understand
* [WT-2671](https://jira.mongodb.org/browse/WT-2671)	Dump more information about the file layout in verify debug mode
* [WT-2672](https://jira.mongodb.org/browse/WT-2672)	Handle system calls that don't set errno
* [WT-2673](https://jira.mongodb.org/browse/WT-2673)	Stop automatically increasing memory page max
* [WT-2674](https://jira.mongodb.org/browse/WT-2674)	Simplify metadata file check
* [WT-2676](https://jira.mongodb.org/browse/WT-2676)	Don't use key size in column store in-memory splits
* [WT-2677](https://jira.mongodb.org/browse/WT-2677)	Fix JSON output so only printable ASCII is produced
* [WT-2678](https://jira.mongodb.org/browse/WT-2678)	Fix cases where metadata implies that an empty value is true
* [WT-2682](https://jira.mongodb.org/browse/WT-2682)	Add option to configure WiredTiger with strict compiler flags
* [WT-2683](https://jira.mongodb.org/browse/WT-2683)	Allow in memory storage engine to report zero disk usage
* [WT-2685](https://jira.mongodb.org/browse/WT-2685)	Fix clear walk hazard pointer failure
* [WT-2686](https://jira.mongodb.org/browse/WT-2686)	Report an error any time we fail to scan the log
* [WT-2687](https://jira.mongodb.org/browse/WT-2687)	Provide ability for test suite to verify the exit status of the wt utility
* [WT-2688](https://jira.mongodb.org/browse/WT-2688)	Improve build error messages when SWIG is unavailable
* [WT-2689](https://jira.mongodb.org/browse/WT-2689)	Fix heap-use-after-free on cursor error path
* [WT-2691](https://jira.mongodb.org/browse/WT-2691)	Use wrappers for ctype functions to avoid sign extension errors
* [WT-2692](https://jira.mongodb.org/browse/WT-2692)	Fix race in file system example
* [WT-2693](https://jira.mongodb.org/browse/WT-2693)	Ensure open_cursor error paths have consistent error handling
* [WT-2695](https://jira.mongodb.org/browse/WT-2695)	Integrate s390x accelerated crc32c support
* [WT-2696](https://jira.mongodb.org/browse/WT-2696)	Wait if we find an unbuffered flag without the size set yet
* [WT-2698](https://jira.mongodb.org/browse/WT-2698)	Change flag into atomically manipulated field to avoid deadlock
* [WT-2702](https://jira.mongodb.org/browse/WT-2702)	Block operations when the cache is 100% full
* [WT-2704](https://jira.mongodb.org/browse/WT-2704)	Fix bug in diagnostic code tracking duration of stuck cache
* [WT-2706](https://jira.mongodb.org/browse/WT-2706)	Fix lost log writes when switching files
* [WT-2707](https://jira.mongodb.org/browse/WT-2707)	Add stricter checks in dist/s_label, and add some WT_ERR calls
* [WT-2708](https://jira.mongodb.org/browse/WT-2708)	Fix a split child-update race with reconciliation/eviction
* [WT-2709](https://jira.mongodb.org/browse/WT-2709)	Resolve a connection reconfigure segfault in __wt_conn_cache_pool_destroy
* [WT-2710](https://jira.mongodb.org/browse/WT-2710)	WT_FILE_HANDLE_INMEM no longer needs an off field
* [WT-2713](https://jira.mongodb.org/browse/WT-2713)	Document WT_PANIC so pluggable filesystems can panic
* [WT-2715](https://jira.mongodb.org/browse/WT-2715)	Resolve random abort test failure with partial write
* [WT-2719](https://jira.mongodb.org/browse/WT-2719)	Allow make check without verbose configured
* [WT-2719](https://jira.mongodb.org/browse/WT-2719)	Fix memory leak in reconfig test
* [WT-2720](https://jira.mongodb.org/browse/WT-2720)	Change the return codes in run.py to error on failures
* [WT-2722](https://jira.mongodb.org/browse/WT-2722)	Escape regular expression meta-character so egrep works on all systems
* [WT-2724](https://jira.mongodb.org/browse/WT-2724)	Pass in session address, not pointer to it
* [WT-2728](https://jira.mongodb.org/browse/WT-2728)	Only verify the log file header during recovery
* [WT-2729](https://jira.mongodb.org/browse/WT-2729)	Focus eviction on the largest trees in cache
* [WT-2730](https://jira.mongodb.org/browse/WT-2730)	Btree can incorrectly match key slots on new pages
* [WT-2731](https://jira.mongodb.org/browse/WT-2731)	Finer adjustment for page size with raw compression
* [WT-2732](https://jira.mongodb.org/browse/WT-2732)	Coverity analysis defect 99665, Remove redundant test
* [WT-2734](https://jira.mongodb.org/browse/WT-2734)	Improve documentation of eviction configuration settings
* [WT-2739](https://jira.mongodb.org/browse/WT-2739)	pluggable file systems documentation cleanups
* [WT-2743](https://jira.mongodb.org/browse/WT-2743)	Fixup new I/O thread count statistics
* [WT-2744](https://jira.mongodb.org/browse/WT-2744)	Detect and ignore partial line
* [WT-2746](https://jira.mongodb.org/browse/WT-2746)	Add a new statistic tracking I/O for checkpoints
* [WT-2751](https://jira.mongodb.org/browse/WT-2751)	column-store statistics incorrectly calculates the number of entries
* [WT-2752](https://jira.mongodb.org/browse/WT-2752)	Fix errors in wtperf config
* [WT-2755](https://jira.mongodb.org/browse/WT-2755)	Fix for cases where tools treats size_t as 4B type
* [WT-2756](https://jira.mongodb.org/browse/WT-2756)	Upgrade the autoconf archive package to check for swig 3.0
* [WT-2757](https://jira.mongodb.org/browse/WT-2757)	Column tables behave differently when column names are provided
* [WT-2759](https://jira.mongodb.org/browse/WT-2759)	Releasing the hot-backup lock doesn't require the schema lock
* [WT-2760](https://jira.mongodb.org/browse/WT-2760)	Fix a bug in backup related to directory sync. Change the filesystem API to make durable the default
* [WT-2762](https://jira.mongodb.org/browse/WT-2762)	Handle 'Y' as an options from wtperf monitor file
* [WT-2763](https://jira.mongodb.org/browse/WT-2763)	Change test ID's in test_intpack to fix OS X test errors
* [WT-2764](https://jira.mongodb.org/browse/WT-2764)	Fix a bug calculating the dirty percentage of cache
* [WT-2765](https://jira.mongodb.org/browse/WT-2765)	Ensure indices are shown in the dump output
* [WT-2766](https://jira.mongodb.org/browse/WT-2766)	Don't sweep LAS cache when aren't making progress in eviction
* [WT-2767](https://jira.mongodb.org/browse/WT-2767)	In test/suite/run.py, add -s N option to run an individual scenario
* [WT-2769](https://jira.mongodb.org/browse/WT-2769)	Update documentation to reflect correct limits of memory_page_max
* [WT-2770](https://jira.mongodb.org/browse/WT-2770)	Add statistics tracking schema operations
* [WT-2772](https://jira.mongodb.org/browse/WT-2772)	Adjust log.wtperf config. Remove unneeded config entries
* [WT-2773](https://jira.mongodb.org/browse/WT-2773)	Ensure that search_near in an index finds exact matches
* [WT-2774](https://jira.mongodb.org/browse/WT-2774)	Minor cleanups/improvements
* [WT-2778](https://jira.mongodb.org/browse/WT-2778)	Enhance output formatting when running Python test suite
* [WT-2779](https://jira.mongodb.org/browse/WT-2779)	Fix large pages getting generated with raw compression
* [WT-2781](https://jira.mongodb.org/browse/WT-2781)	Don't take checkpoint lock if checkpoint_wait=0 for bulk cursor open
* [WT-2782](https://jira.mongodb.org/browse/WT-2782)	Minor text changes for file system functions
* [WT-2783](https://jira.mongodb.org/browse/WT-2783)	Clean up wtperf configuration object management
* [WT-2785](https://jira.mongodb.org/browse/WT-2785)	Scrub dirty pages rather than evicting them single-page reconciliation
* [WT-2787](https://jira.mongodb.org/browse/WT-2787)	Include src/include/wiredtiger_ext.h is problematic
* [WT-2788](https://jira.mongodb.org/browse/WT-2788)	Do not touch memory already freed during a close API call
* [WT-2791](https://jira.mongodb.org/browse/WT-2791)	Have evergreen upload artifacts for each build. Rename current artifacts to "Binaries"
* [WT-2793](https://jira.mongodb.org/browse/WT-2793)	Enhance statistics related to overflow values
* [WT-2795](https://jira.mongodb.org/browse/WT-2795)	Update documentation about read-only mode
* [WT-2796](https://jira.mongodb.org/browse/WT-2796)	Fix a memory leak when using the lookaside table
* [WT-2798](https://jira.mongodb.org/browse/WT-2798)	Fix data consistency bug with table creates during a checkpoint
* [WT-2800](https://jira.mongodb.org/browse/WT-2800)	Fix incorrect error message
* [WT-2801](https://jira.mongodb.org/browse/WT-2801)	Prevent eviction of metadata updates by a running checkpoint
* [WT-2802](https://jira.mongodb.org/browse/WT-2802)	Copy values during commit before releasing snapshot
* [WT-2803](https://jira.mongodb.org/browse/WT-2803)	Add VERBOSE=1 to all make check jobs
* [WT-2804](https://jira.mongodb.org/browse/WT-2804)	Don't read values in a tree without a snapshot
* [WT-2805](https://jira.mongodb.org/browse/WT-2805)	Avoid infinite recursion on error stream failure
* [WT-2806](https://jira.mongodb.org/browse/WT-2806)	Fix an off-by-one allocation in wtperf
* [WT-2807](https://jira.mongodb.org/browse/WT-2807)	Change the memory allocator for wtperf performance tests
* [WT-2811](https://jira.mongodb.org/browse/WT-2811)	The checkpoint session should not ignore it's own transaction ID
* [WT-2812](https://jira.mongodb.org/browse/WT-2812)	Verify cache_size before dividing to avoid division by 0
* [WT-2813](https://jira.mongodb.org/browse/WT-2813)	Configure eviction dirty settings explicitly for LSM in test/format
* [WT-2814](https://jira.mongodb.org/browse/WT-2814)	Add new single op truncate mode to wtperf
* [WT-2816](https://jira.mongodb.org/browse/WT-2816)	General improvements to WiredTiger eviction performance
* [WT-2817](https://jira.mongodb.org/browse/WT-2817)	Add wtperf conf to stress test checkpoints with updates
* [WT-2818](https://jira.mongodb.org/browse/WT-2818)	Change the page visibility check when queuing pages for eviction
* [WT-2820](https://jira.mongodb.org/browse/WT-2820)	Add gcc warn_unused_result attribute
* [WT-2822](https://jira.mongodb.org/browse/WT-2822)	Simplify error handling by using a panic mutex in functions that cannot fail
* [WT-2823](https://jira.mongodb.org/browse/WT-2823)	Support file handles without a truncate method
* [WT-2824](https://jira.mongodb.org/browse/WT-2824)	Fix double concatenation the config strings
* [WT-2826](https://jira.mongodb.org/browse/WT-2826)	Fix a clang38 false positive on uninitialized variable
* [WT-2827](https://jira.mongodb.org/browse/WT-2827)	Set a reasonable minimum for log_size
* [WT-2828](https://jira.mongodb.org/browse/WT-2828)	Change wtperf long tests to better match MongoDB workloads
* [WT-2829](https://jira.mongodb.org/browse/WT-2829)	Fix missing define for BerkeleyDB
* [WT-2831](https://jira.mongodb.org/browse/WT-2831)	Skip checkpointing if there have been no modifications
* [WT-2832](https://jira.mongodb.org/browse/WT-2832)	Python test uses hard-coded temporary directory
* [WT-2834](https://jira.mongodb.org/browse/WT-2834)	Fix sign-change warning with auto conversion from uint to int
* [WT-2834](https://jira.mongodb.org/browse/WT-2834)	Shared bloom filters allow only a partial shortcut
* [WT-2835](https://jira.mongodb.org/browse/WT-2835)	Stop WT_CONNECTION.leak-memory skipping memory map and cache cleanup
* [WT-2838](https://jira.mongodb.org/browse/WT-2838)	Don't free session handles on close if leak memory is configured
* [WT-2839](https://jira.mongodb.org/browse/WT-2839)	Remove cases ignoring return value of function
* [WT-2840](https://jira.mongodb.org/browse/WT-2840)	Fix garbage values found with clang analysis
* [WT-2841](https://jira.mongodb.org/browse/WT-2841)	Initialize verbose checkpoint timer at start of checkpoint
* [WT-2842](https://jira.mongodb.org/browse/WT-2842)	Add explicit include in wtperf to resolve build warning
* [WT-2843](https://jira.mongodb.org/browse/WT-2843)	If there is no truncate available, manually zero the log file
* [WT-2846](https://jira.mongodb.org/browse/WT-2846)	Ensure that all resources are released when destroying a thread group
* [WT-2846](https://jira.mongodb.org/browse/WT-2846)	Fixes for new thread group code
* [WT-2847](https://jira.mongodb.org/browse/WT-2847)	Merge fair locks into read/write locks
* [WT-2850](https://jira.mongodb.org/browse/WT-2850)	Fix clang 4.1 attribute warnings
* [WT-2853](https://jira.mongodb.org/browse/WT-2853)	Don't force eviction if multiple cursors are pinning the page
* [WT-2857](https://jira.mongodb.org/browse/WT-2857)	POSIX ftruncate calls should be use HAVE_FTRUNCATE define
* [WT-2858](https://jira.mongodb.org/browse/WT-2858)	Rename wtperf's CONFIG structure
* [WT-2859](https://jira.mongodb.org/browse/WT-2859)	Restructure statistics gathering macros
* [WT-2863](https://jira.mongodb.org/browse/WT-2863)	Support UTF-8 paths on Windows
* [WT-2864](https://jira.mongodb.org/browse/WT-2864)	Update reconfigure test to detect hangs
* [WT-2865](https://jira.mongodb.org/browse/WT-2865)	Fix a bug where the eviction server could panic after a WT_NOTFOUND
* [WT-2866](https://jira.mongodb.org/browse/WT-2866)	Don't set eviction stuck unless the cache is full
* [WT-2867](https://jira.mongodb.org/browse/WT-2867)	Review and fix barrier usage in __lsm_tree_close
* [WT-2868](https://jira.mongodb.org/browse/WT-2868)	Add sample_interval to checkpoint-stress.wtperf
* [WT-2869](https://jira.mongodb.org/browse/WT-2869)	Fix a performance regression on secondaries
* [WT-2870](https://jira.mongodb.org/browse/WT-2870)	Rename wtperf jobs for consistency
* [WT-2871](https://jira.mongodb.org/browse/WT-2871)	Make verbose formats and argument types match
* [WT-2872](https://jira.mongodb.org/browse/WT-2872)	Ensure tests with tiny caches don't get stuck due to the dirty trigger
* [WT-2873](https://jira.mongodb.org/browse/WT-2873)	Refactor CRC32 code
* [WT-2874](https://jira.mongodb.org/browse/WT-2874)	Change test_compact01 to avoid eviction
* [WT-2875](https://jira.mongodb.org/browse/WT-2875)	Add environment variable to disable long csuite tests
* [WT-2876](https://jira.mongodb.org/browse/WT-2876)	Add an oplog-like ability to wtperf utility
* [WT-2878](https://jira.mongodb.org/browse/WT-2878)	Fix an issue where verbose changes affected performance
* [WT-2881](https://jira.mongodb.org/browse/WT-2881)	Add -Wpedantic to clang compiler warning flags
* [WT-2883](https://jira.mongodb.org/browse/WT-2883)	Remove potentially recursive call for verbose handleops
* [WT-2885](https://jira.mongodb.org/browse/WT-2885)	Lint __wt_checkpoint_signal function
* [WT-2886](https://jira.mongodb.org/browse/WT-2886)	Ignore dirty eviction settings when in_memory is true
* [WT-2888](https://jira.mongodb.org/browse/WT-2888)	Switch functions to return void where possible
* [WT-2892](https://jira.mongodb.org/browse/WT-2892)	Fix case where hot backup can race with block truncate
* [WT-2894](https://jira.mongodb.org/browse/WT-2894)	Add wtperf stress workload that tries to induce negative scaling
* [WT-2895](https://jira.mongodb.org/browse/WT-2895)	Reduce the runtime of make check testing with disable long
* [WT-2896](https://jira.mongodb.org/browse/WT-2896)	Fix a resource leak
* [WT-2897](https://jira.mongodb.org/browse/WT-2897)	Fix an issue where checkpoints can become corrupted on failure
* [WT-2900](https://jira.mongodb.org/browse/WT-2900)	Add ARM8 build support to WiredTiger and fix ARM CRC assembler tags
* [WT-2901](https://jira.mongodb.org/browse/WT-2901)	Make checkpoint scrubbing configurable
* [WT-2902](https://jira.mongodb.org/browse/WT-2902)	Track per-tree the efficiency of eviction walks
* [WT-2903](https://jira.mongodb.org/browse/WT-2903)	Change the eviction_scrub_target default to 15%
* [WT-2904](https://jira.mongodb.org/browse/WT-2904)	Fix a bug where the reported checkpoint size could be many times data size
* [WT-2904](https://jira.mongodb.org/browse/WT-2904)	Revert overly strong assertion
* [WT-2905](https://jira.mongodb.org/browse/WT-2905)	Remove dead code
* [WT-2907](https://jira.mongodb.org/browse/WT-2907)	Fixed java concurrent close test to have both insert threads and scan threads
* [WT-2908](https://jira.mongodb.org/browse/WT-2908)	Add a dry-run option to python suite
* [WT-2910](https://jira.mongodb.org/browse/WT-2910)	When running in-memory, only evict dirty pages
* [WT-2911](https://jira.mongodb.org/browse/WT-2911)	Add support for gcc6
* [WT-2912](https://jira.mongodb.org/browse/WT-2912)	Make --enable-strict run on the zseries test box
* [WT-2913](https://jira.mongodb.org/browse/WT-2913)	Re-sort eviction queues if we find no new candidates
* [WT-2914](https://jira.mongodb.org/browse/WT-2914)	In test/csuite program, added explicit call to wiredtiger_open to satisfy some linkers
* [WT-2916](https://jira.mongodb.org/browse/WT-2916)	Fix and simplify s_whitespace
* [WT-2917](https://jira.mongodb.org/browse/WT-2917)	Split wtperf's configuration into per-database and per-run parts
* [WT-2918](https://jira.mongodb.org/browse/WT-2918)	The dist scripts create C files s_whitespace complains about
* [WT-2919](https://jira.mongodb.org/browse/WT-2919)	Don't mask error returns from style checking scripts
* [WT-2920](https://jira.mongodb.org/browse/WT-2920)	New eviction statistics
* [WT-2921](https://jira.mongodb.org/browse/WT-2921)	Reset the count when the last hazard pointer is cleared
* [WT-2923](https://jira.mongodb.org/browse/WT-2923)	Fix heap-use-after-free on address in compaction
* [WT-2924](https://jira.mongodb.org/browse/WT-2924)	Ensure we are doing eviction when threads are waiting for it
* [WT-2925](https://jira.mongodb.org/browse/WT-2925)	Change where the WT_THREAD_PANIC_FAIL flag lives
* [WT-2926](https://jira.mongodb.org/browse/WT-2926)	WT_CONNECTION.reconfigure can attempt unlock of not-locked lock
* [WT-2928](https://jira.mongodb.org/browse/WT-2928)	Don't give up when the urgent queue is half empty
* [WT-2928](https://jira.mongodb.org/browse/WT-2928)	Eviction failing to switch queues can lead to starvation
* [WT-2931](https://jira.mongodb.org/browse/WT-2931)	Enforce limits on dirty data for in-memory
* [WT-2932](https://jira.mongodb.org/browse/WT-2932)	Add a configuration option allowing tables to ignore cache limits
* [WT-2933](https://jira.mongodb.org/browse/WT-2933)	Fix a race between named snapshots and checkpoints
* [WT-2937](https://jira.mongodb.org/browse/WT-2937)	Only do an eviction walk after a page has been taken from the current queue
* [WT-2938](https://jira.mongodb.org/browse/WT-2938)	Change assembly file extensions from .S to .sx
* [WT-2941](https://jira.mongodb.org/browse/WT-2941)	Improve test/format to use faster key-generation functions
* [WT-2942](https://jira.mongodb.org/browse/WT-2942)	Verbose messages should not have newlines
* [WT-2945](https://jira.mongodb.org/browse/WT-2945)	Occasional hang running reconfigure fuzz test
* [WT-2946](https://jira.mongodb.org/browse/WT-2946)	Fix dist/s_docs being incompatible with OS X Xcode installation
* [WT-2947](https://jira.mongodb.org/browse/WT-2947)	Replace test suite populate functions with *DataSet classes
* [WT-2948](https://jira.mongodb.org/browse/WT-2948)	Simplify error handling by making __wt_epoch return never fail
* [WT-2949](https://jira.mongodb.org/browse/WT-2949)	Add option to skip closing the connection after test runs
* [WT-2950](https://jira.mongodb.org/browse/WT-2950)	Free all reconciliation memory between calls to eviction
* [WT-2953](https://jira.mongodb.org/browse/WT-2953)	Only test for checkpoint/LAS collision if LAS was used
* [WT-2954](https://jira.mongodb.org/browse/WT-2954)	Evict pages that exceed memory_page_max even if the transaction ID is stuck
* [WT-2955](https://jira.mongodb.org/browse/WT-2955)	Add statistics tracking the amount of time threads spend waiting for high level locks
* [WT-2959](https://jira.mongodb.org/browse/WT-2959)	Ensure WT_SESSION_IMPL is never used before it's initialized
* [WT-2961](https://jira.mongodb.org/browse/WT-2961)	Add a version drop-down to the web version of the docs
* [WT-2962](https://jira.mongodb.org/browse/WT-2962)	Allow configuration of builtin extensions
* [WT-2963](https://jira.mongodb.org/browse/WT-2963)	Fix a race bounding eviction in small caches
* [WT-2964](https://jira.mongodb.org/browse/WT-2964)	Alter evict walk to not fill all its slots with internal pages when running in aggressive mode
* [WT-2965](https://jira.mongodb.org/browse/WT-2965)	Remove sleep and retry loop from __evict_exclusive
* [WT-2968](https://jira.mongodb.org/browse/WT-2968)	Don't open file handles on backup
* [WT-2971](https://jira.mongodb.org/browse/WT-2971)	Add details on raw-compression into WT documentation
* [WT-2975](https://jira.mongodb.org/browse/WT-2975)	Fix a leak of statistics data when reopening handles
* [WT-2976](https://jira.mongodb.org/browse/WT-2976)	Add a statistic tracking how long app threads spend reading and writing
* [WT-2977](https://jira.mongodb.org/browse/WT-2977)	Remove stash and check code from LSM test
* [WT-2984](https://jira.mongodb.org/browse/WT-2984)	Keep sufficient history in the metadata for queries
* [WT-2985](https://jira.mongodb.org/browse/WT-2985)	Fix a race during checkpoint that can cause a core dump
* [WT-2987](https://jira.mongodb.org/browse/WT-2987)	Fix a bug where opening a cursor on an incomplete table drops core
* [WT-2988](https://jira.mongodb.org/browse/WT-2988)	Fix __wt_epoch potentially returning garbage values
* [WT-2991](https://jira.mongodb.org/browse/WT-2991)	Fix Coverity REVERSE_INULL
* [WT-2998](https://jira.mongodb.org/browse/WT-2998)	Add error messages to error returns that might be confusing
* [WT-2999](https://jira.mongodb.org/browse/WT-2999)	Added contributed test case that demonstrated the leak
* [WT-3000](https://jira.mongodb.org/browse/WT-3000)	Wait for previous writes on first write to new log file
* [WT-3001](https://jira.mongodb.org/browse/WT-3001)	Fix WT_EXTENSION_API references that are named inconsistently
* [WT-3002](https://jira.mongodb.org/browse/WT-3002)	Allow applications to exempt threads from eviction
* [WT-3003](https://jira.mongodb.org/browse/WT-3003)	Don't generate log record and op types
* [WT-3003](https://jira.mongodb.org/browse/WT-3003)	Fix doxygen comment blocks
* [WT-3004](https://jira.mongodb.org/browse/WT-3004)	Lint, declare functions that don't return a value as void
* [WT-3005](https://jira.mongodb.org/browse/WT-3005)	Add top-level .gitignore file
* [WT-3008](https://jira.mongodb.org/browse/WT-3008)	Move wtperf stress jobs to new stress runner folder
* [WT-3009](https://jira.mongodb.org/browse/WT-3009)	Remove the eviction_dirty_target from test/format runs with less than 20MB cache
* [WT-3011](https://jira.mongodb.org/browse/WT-3011)	Fix __wt_curjoin_open() saving the wrong URI in the cursor
* [WT-3012](https://jira.mongodb.org/browse/WT-3012)	Check a btree is LSM primary before switching
* [WT-3012](https://jira.mongodb.org/browse/WT-3012)	Don't track the LSM Primary as part of dirty bytes in cache
* [WT-3015](https://jira.mongodb.org/browse/WT-3015)	Change when we will evict internal pages
* [WT-3016](https://jira.mongodb.org/browse/WT-3016)	Change how file size is determined during compact tests to allow
* [WT-3017](https://jira.mongodb.org/browse/WT-3017)	Don't set NULL hazard pointers
* [WT-3020](https://jira.mongodb.org/browse/WT-3020)	Always make LSM chunks evictable when they are switched out
* [WT-3022](https://jira.mongodb.org/browse/WT-3022)	Change lsm_tree flags to fields to prevent race conditions
* [WT-3023](https://jira.mongodb.org/browse/WT-3023)	Don't treat splits as eviction making progress
* [WT-3024](https://jira.mongodb.org/browse/WT-3024)	Fix a hang on close caused by leaving a transaction ID pinned

WiredTiger release 2.8.0, 2015-03-24
------------------------------------

The WiredTiger 2.8.0 release contains new features, new supported platforms,
minor API changes and bug fixes.

New features and API changes; refer to the API documentation for full details:

* [WT-60](https://jira.mongodb.org/browse/WT-60)         Port WiredTiger to run on big endian platforms
* [WT-2287](https://jira.mongodb.org/browse/WT-2287)       Add a new WT_SESSION.rebalance API
* [WT-2333](https://jira.mongodb.org/browse/WT-2333)       Add a lock_wait configuration setting to WT_SESSION.drop to avoid blocking
* [WT-2349](https://jira.mongodb.org/browse/WT-2349)       Add a readonly configuration setting to wiredtiger_open
* [WT-2363](https://jira.mongodb.org/browse/WT-2363)       Remove built in support for bzip2 compression
* [WT-2404](https://jira.mongodb.org/browse/WT-2404)       Add streaming pack/unpack methods to the extension API

Significant changes and bug fixes:

* [WT-1801](https://jira.mongodb.org/browse/WT-1801)       Add a directory sync after rollback of a WT_SESSION::rename operation
* [WT-2130](https://jira.mongodb.org/browse/WT-2130)       Improve on-disk page utilization with random workloads
* [WT-2275](https://jira.mongodb.org/browse/WT-2275)       Fix a database corruption after truncate and crash
* [WT-2264](https://jira.mongodb.org/browse/WT-2264)       High update workloads can cause checkpoints to never complete
* [WT-2290](https://jira.mongodb.org/browse/WT-2290)       Improve effectiveness of WT_SESSION.compact
* [WT-2361](https://jira.mongodb.org/browse/WT-2361)       Fix a bug in column-store where verify identifies out of order data
* [WT-2367](https://jira.mongodb.org/browse/WT-2367)       Fix a bug in WT_CURSOR.next that could cause out-of-order key returns
* [WT-2374](https://jira.mongodb.org/browse/WT-2374)       Fix a bug where a database was corrupted when restoring a backup
* [WT-2381](https://jira.mongodb.org/browse/WT-2381)       Fix the dump utility to include the table configuration
* [WT-2451](https://jira.mongodb.org/browse/WT-2451)       Allow the WiredTiger metadata to be evicted
* [WT-2490](https://jira.mongodb.org/browse/WT-2490)       Fix a bug in column-store where search_near() returns the wrong key

Issues fixed in MongoDB:

* [SERVER-21619](https://jira.mongodb.org/browse/SERVER-21619)  sys-perf: WT crash during core_workloads_WT execution
* [SERVER-21833](https://jira.mongodb.org/browse/SERVER-21833)  Enhance WT_SESSION::compact to more reliably release space
* [SERVER-21887](https://jira.mongodb.org/browse/SERVER-21887)  Enhance $sample to be faster on newly created collection
* [SERVER-22676](https://jira.mongodb.org/browse/SERVER-22676)  Allow WiredTiger to open databases created by 3.0.0 or 3.0.1
* [SERVER-22773](https://jira.mongodb.org/browse/SERVER-22773)  New CRC32 implementation on PowerPC
* [SERVER-22831](https://jira.mongodb.org/browse/SERVER-22831)  Low query rate with heavy cache pressure and an idle collection

Other noteworthy changes since the previous release:

* [WT-1517](https://jira.mongodb.org/browse/WT-1517)       Fix error handling around schema format edge cases
* [WT-2060](https://jira.mongodb.org/browse/WT-2060)       Simplify aggregation of statistics
* [WT-2073](https://jira.mongodb.org/browse/WT-2073)       Metadata cleanups
* [WT-2099](https://jira.mongodb.org/browse/WT-2099)       Seeing memory underflow messages
* [WT-2107](https://jira.mongodb.org/browse/WT-2107)       Add example code including an event handler
* [WT-2113](https://jira.mongodb.org/browse/WT-2113)       Truncate test occasionally fails with unexpected EBUSY
* [WT-2123](https://jira.mongodb.org/browse/WT-2123)       Don't clear allocated memory if not required
* [WT-2173](https://jira.mongodb.org/browse/WT-2173)       Fix some cases where tiny caches could get stuck full
* [WT-2177](https://jira.mongodb.org/browse/WT-2177)       Add an optional per-thread seed to random number generator
* [WT-2198](https://jira.mongodb.org/browse/WT-2198)       Bulk load and column store appends
* [WT-2215](https://jira.mongodb.org/browse/WT-2215)       WT_LSN needs to support atomic reads and updates
* [WT-2216](https://jira.mongodb.org/browse/WT-2216)       Simplify row-store search loop slightly
* [WT-2231](https://jira.mongodb.org/browse/WT-2231)       Pinned page cursor searches could check parent keys
* [WT-2235](https://jira.mongodb.org/browse/WT-2235)       Add a unicode option to WiredTiger printlog utility
* [WT-2242](https://jira.mongodb.org/browse/WT-2242)       WiredTiger treats dead trees the same as other trees in eviction
* [WT-2246](https://jira.mongodb.org/browse/WT-2246)       Improve performance for column-store append searches
* [WT-2247](https://jira.mongodb.org/browse/WT-2247)       Variable-length column-store in-memory page splits
* [WT-2258](https://jira.mongodb.org/browse/WT-2258)       Stop WiredTiger pre-loading pages when direct-IO is configured
* [WT-2259](https://jira.mongodb.org/browse/WT-2259)       Fix error handling when getting exclusive access to a btree
* [WT-2262](https://jira.mongodb.org/browse/WT-2262)       Fix random cursor next so it is not skewed by tree shape
* [WT-2265](https://jira.mongodb.org/browse/WT-2265)       WiredTiger related change in PowerPC specific code block in gcc.h
* [WT-2272](https://jira.mongodb.org/browse/WT-2272)       Fix a bug in the sweep server that triggered an assertion
* [WT-2276](https://jira.mongodb.org/browse/WT-2276)       Add a tool to decode checkpoint addr
* [WT-2277](https://jira.mongodb.org/browse/WT-2277)       Remove WT check against big-endian systems
* [WT-2279](https://jira.mongodb.org/browse/WT-2279)       Define WT_PAUSE(), WT_FULL_BARRIER(), etc when s390x is defined
* [WT-2280](https://jira.mongodb.org/browse/WT-2280)       Add CRC32 Optimized code for PowerPC
* [WT-2282](https://jira.mongodb.org/browse/WT-2282)       Error in wt_txn_update_oldest verbose message test
* [WT-2283](https://jira.mongodb.org/browse/WT-2283)       Retry in txn_update_oldest results in a hang
* [WT-2285](https://jira.mongodb.org/browse/WT-2285)       Enhance configure to set BUFFER_ALIGNMENT_DEFAULT to 4kb on Linux
* [WT-2289](https://jira.mongodb.org/browse/WT-2289)       Fix a bug in btree search when doing a fast key check
* [WT-2291](https://jira.mongodb.org/browse/WT-2291)       Random cursor walk inefficient in skip list only trees
* [WT-2295](https://jira.mongodb.org/browse/WT-2295)       WT_SESSION.create does a full-scan of the main table
* [WT-2296](https://jira.mongodb.org/browse/WT-2296)       Improve log algorithm for sync/flush settings
* [WT-2297](https://jira.mongodb.org/browse/WT-2297)       Fix off-by-one error in Huffman config file parsing
* [WT-2299](https://jira.mongodb.org/browse/WT-2299)       Clean up layering violation between btree and block manager code
* [WT-2307](https://jira.mongodb.org/browse/WT-2307)       Fix a bug where internal page splits can corrupt cursor iteration
* [WT-2308](https://jira.mongodb.org/browse/WT-2308)       Add support for custom extractor for ref_cursors in join cursor
* [WT-2311](https://jira.mongodb.org/browse/WT-2311)       Add support for UltraSparc platform
* [WT-2312](https://jira.mongodb.org/browse/WT-2312)       Fix a bug where re-creating a deleted column-store page can corrupt the in-memory tree
* [WT-2313](https://jira.mongodb.org/browse/WT-2313)       Fix a bug in the sweep server
* [WT-2314](https://jira.mongodb.org/browse/WT-2314)       Update page-swap error handling so that it is consistent
* [WT-2316](https://jira.mongodb.org/browse/WT-2316)       Fix a bug in WT_CURSOR.prev where it could return keys out-of-order
* [WT-2318](https://jira.mongodb.org/browse/WT-2318)       Enhance condition wait implementation to use less CPU on idle databases
* [WT-2321](https://jira.mongodb.org/browse/WT-2321)       Fix a race between eviction and worker threads on the eviction queue
* [WT-2322](https://jira.mongodb.org/browse/WT-2322)       Fix a bug in read-uncommitted join cursors where using Bloom filters is unsafe
* [WT-2328](https://jira.mongodb.org/browse/WT-2328)       Update schema drop does to use the block manager interface for file removal
* [WT-2331](https://jira.mongodb.org/browse/WT-2331)       Checking of search result for reference cursors before join
* [WT-2332](https://jira.mongodb.org/browse/WT-2332)       Fix a bug in logging write-no-sync mode
* [WT-2335](https://jira.mongodb.org/browse/WT-2335)       Fix a bug where parsing an invalid configuration string could segfault
* [WT-2338](https://jira.mongodb.org/browse/WT-2338)       Disable using pre-allocated log files when a backup cursor is open
* [WT-2339](https://jira.mongodb.org/browse/WT-2339)       Fix a bug in rebalance that caused database verification failure
* [WT-2340](https://jira.mongodb.org/browse/WT-2340)       Add logging guarantee assertions
* [WT-2345](https://jira.mongodb.org/browse/WT-2345)       Avoid creating tiny pages on disk when evicting small pages from cache
* [WT-2346](https://jira.mongodb.org/browse/WT-2346)       Enhance checkpoint implementation so the schema lock is not held during I/O
* [WT-2347](https://jira.mongodb.org/browse/WT-2347)       Fix some schema format edge cases in Java API
* [WT-2352](https://jira.mongodb.org/browse/WT-2352)       Allow build and test without requiring lz4
* [WT-2355](https://jira.mongodb.org/browse/WT-2355)       Fix minor scratch buffer usage in logging
* [WT-2356](https://jira.mongodb.org/browse/WT-2356)       log scan advances to next log file on partially written record
* [WT-2368](https://jira.mongodb.org/browse/WT-2368)       Fix a bug where row-store can pass invalid keys to collator functions
* [WT-2369](https://jira.mongodb.org/browse/WT-2369)       Use C compiler to detect headers instead of C++ compiler
* [WT-2371](https://jira.mongodb.org/browse/WT-2371)       Fix a bug where parent split cannot access the page after page-index swap
* [WT-2372](https://jira.mongodb.org/browse/WT-2372)       WiredTiger windows builder fails with C4005 against the "inline" macro
* [WT-2375](https://jira.mongodb.org/browse/WT-2375)       Add tests for custom collators
* [WT-2378](https://jira.mongodb.org/browse/WT-2378)       Fix a hang in LSM when doing forced drop with the no wait option
* [WT-2382](https://jira.mongodb.org/browse/WT-2382)       Fix a bug in join cursors with custom collator for 'u' format
* [WT-2384](https://jira.mongodb.org/browse/WT-2384)       Fix a bug in join cursors where lt, le conditions for ordering could be wrong
* [WT-2387](https://jira.mongodb.org/browse/WT-2387)       Fix cursor random unit test on Windows
* [WT-2390](https://jira.mongodb.org/browse/WT-2390)       Fix the OS X build
* [WT-2391](https://jira.mongodb.org/browse/WT-2391)       Enhance eviction so that it is less likely to evict pages from indexes
* [WT-2394](https://jira.mongodb.org/browse/WT-2394)       Fix a bug in compact that meant we didn't always reclaim available space
* [WT-2395](https://jira.mongodb.org/browse/WT-2395)       Fix a recovery failure with an LSM tree
* [WT-2396](https://jira.mongodb.org/browse/WT-2396)       Fix a deadlock between table drop and checkpoint
* [WT-2397](https://jira.mongodb.org/browse/WT-2397)       Fix a bug in cursor traversal where doing a reverse walk could skip records.
* [WT-2399](https://jira.mongodb.org/browse/WT-2399)       Add test case that verifies cursor traversal
* [WT-2409](https://jira.mongodb.org/browse/WT-2409)       Fix a minor performance regression in LSM
* [WT-2410](https://jira.mongodb.org/browse/WT-2410)       Stop casting function pointers to different types
* [WT-2411](https://jira.mongodb.org/browse/WT-2411)       Fix a hang in LSM related to dropping tables
* [WT-2414](https://jira.mongodb.org/browse/WT-2414)       Avoid extractor calls for ordering cursor in join cursor
* [WT-2417](https://jira.mongodb.org/browse/WT-2417)       Windows Jenkins task is failing
* [WT-2418](https://jira.mongodb.org/browse/WT-2418)       Fix a bug in WT_SESSION.rebalance where it could return EBUSY
* [WT-2420](https://jira.mongodb.org/browse/WT-2420)       Fix a bug in LSM where recovery from a backup could fail
* [WT-2423](https://jira.mongodb.org/browse/WT-2423)       Fix a bug in session reference counting on error handling
* [WT-2425](https://jira.mongodb.org/browse/WT-2425)       Fix a performance regression in wtperf evict-btree read workload
* [WT-2426](https://jira.mongodb.org/browse/WT-2426)       Fix a deadlock caused by recent changes to checkpoint handle locking
* [WT-2428](https://jira.mongodb.org/browse/WT-2428)       Make statistics logging compatible with MongoDB
* [WT-2429](https://jira.mongodb.org/browse/WT-2429)       Add a statistic that tracks aggressive mode in eviction
* [WT-2430](https://jira.mongodb.org/browse/WT-2430)       Add statistics for join cursor
* [WT-2432](https://jira.mongodb.org/browse/WT-2432)       Fix a performance regression on LSM and read only workloads
* [WT-2433](https://jira.mongodb.org/browse/WT-2433)       Allow read-only databases to log statistics
* [WT-2434](https://jira.mongodb.org/browse/WT-2434)       Fix a race between force-drop and sweep
* [WT-2436](https://jira.mongodb.org/browse/WT-2436)       Fix a bug in join cursors with lt, le conditions and "strategy=bloom"
* [WT-2438](https://jira.mongodb.org/browse/WT-2438)       Extend WiredTiger stat declarations to help external tools
* [WT-2440](https://jira.mongodb.org/browse/WT-2440)       Fix a bug in the PowerPC checksum implementation
* [WT-2443](https://jira.mongodb.org/browse/WT-2443)       Add statistics for all indexes used in join cursor
* [WT-2447](https://jira.mongodb.org/browse/WT-2447)       Enhance join cursor implementation to avoid reading main table where possible
* [WT-2448](https://jira.mongodb.org/browse/WT-2448)       Add no_scale flag to relevant statistics
* [WT-2449](https://jira.mongodb.org/browse/WT-2449)       Enhance configure to check for a 64-bit build
* [WT-2454](https://jira.mongodb.org/browse/WT-2454)       Fix checkpoint_sync=false behavior to prevent flushes/sync to disk
* [WT-2456](https://jira.mongodb.org/browse/WT-2456)       Fix PowerPC CRC32 Code
* [WT-2457](https://jira.mongodb.org/browse/WT-2457)       Fix a bug where dropping an LSM table can return EBUSY when no user ops are active
* [WT-2459](https://jira.mongodb.org/browse/WT-2459)       Allow configure to use the --tag option for libtool when compiling on PowerPC
* [WT-2460](https://jira.mongodb.org/browse/WT-2460)       Fix a bug where checkpoint could fail with WT_ROLLBACK
* [WT-2471](https://jira.mongodb.org/browse/WT-2471)       Update WiredTiger printf formats to be platform aware
* [WT-2476](https://jira.mongodb.org/browse/WT-2476)       Fix a race where btree->evict_lock is being accessed after being destroyed
* [WT-2481](https://jira.mongodb.org/browse/WT-2481)       Fix a recently introduced performance regression in LSM
* [WT-2483](https://jira.mongodb.org/browse/WT-2483)       Make read only testing more robust
* [WT-2485](https://jira.mongodb.org/browse/WT-2485)       Fix a test/format failure with floating point exception
* [WT-2492](https://jira.mongodb.org/browse/WT-2492)       Fix a bug in Windows where we used the different memory allocators accidentally
* [WT-2495](https://jira.mongodb.org/browse/WT-2495)       Missing memory initialization leads to crash on Windows
* [WT-2496](https://jira.mongodb.org/browse/WT-2496)       Fix a bug revealed by test/format unable to read root page
* [WT-2497](https://jira.mongodb.org/browse/WT-2497)       Enhance test/format to save a copy of backup
* [WT-2498](https://jira.mongodb.org/browse/WT-2498)       Fix a bug in LSM tree drop where it could hang when a user cursor is open
* [WT-2499](https://jira.mongodb.org/browse/WT-2499)       Fix a bug in LSM shutdown where a race condition causes a segfault
* [WT-2501](https://jira.mongodb.org/browse/WT-2501)       Fix a bug where dropping a just opened LSM tree isn't thread safe
* [WT-2502](https://jira.mongodb.org/browse/WT-2502)       Fix a memory leak in locking handles for checkpoint

WiredTiger release 2.7.0, 2015-12-08
------------------------------------

The WiredTiger 2.7.0 release contains new features, minor API changes and bug
fixes.

New features and API changes; refer to the API documentation for full details:

* [WT-147](https://jira.mongodb.org/browse/WT-147)  Create indexes on non-empty tables.
* [WT-1315](https://jira.mongodb.org/browse/WT-1315) Add an implementation of cursor joins via a new WT_SESSION::join API.
* [WT-1350](https://jira.mongodb.org/browse/WT-1350) Add a new configuration option to ::wiredtiger_open and
          WT_CONNECTION::reconfigure called "eviction_dirty_trigger" that causes eviction to start
          evicting dirty pages from cache once the given threshold has been reached.
* [WT-1728](https://jira.mongodb.org/browse/WT-1728) Add a WT_SESSION::reset method to release resources held by a session.
* [WT-1930](https://jira.mongodb.org/browse/WT-1930) Allow setting "file_manager=(close_idle_time=0)" to ::wiredtiger_open and
          WT_CONNECTION::reconfigure to disable closing idle handles.
* [WT-1959](https://jira.mongodb.org/browse/WT-1959) Change verify to distinguish between warnings and errors. Add a new strict mode
          to verify that causes warnings to be reported as errors. Use strict mode to match earlier
          behavior. See the upgrading documentation for more information.
* [WT-1980](https://jira.mongodb.org/browse/WT-1980) Add a new "metadata:create" URI to WT_SESSION::open_cursor for metadata cursors
          that return strings useful for passing to WT_SESSION::create.
* [WT-2065](https://jira.mongodb.org/browse/WT-2065) Add a new configuration option to ::wiredtiger_open and
          WT_CONNECTION::reconfigure called "shared_cache=(quota)" that limits the amount of shared
          cache a participant can be assigned.
* [WT-2104](https://jira.mongodb.org/browse/WT-2104) Add a method to flush log files via a new WT_SESSION::log_flush API. Made
          WT_SESSION::commit_transaction configuration options match WT_SESSION::log_flush. Change
          the default WT_SESSION::transaction_sync timeout to 20 minutes rather than infinity.
* [WT-2151](https://jira.mongodb.org/browse/WT-2151) Enhance logging configuration to allow reconfiguration and add a new "log=(zero_fill)"
          configuration option that causes WiredTiger to zero-fill log files on creation.
* [WT-2200](https://jira.mongodb.org/browse/WT-2200) Add a new configuration option to ::wiredtiger_open called "write_through" that
          causes WiredTiger to specify the FILE_FLAG_WRITE_THROUGH on Windows when writing files
          (default false, including when "direct_io" is configured).
* [WT-2217](https://jira.mongodb.org/browse/WT-2217) After a successful call to WT_CURSOR::insert, the key and value will be
          cleared from the cursor. See the upgrading documentation for more information.
* [SERVER-17078](https://jira.mongodb.org/browse/SERVER-17078) Add a "statistics=(size)" mode to statistics cursors, which allows for
          retrieving file size only.
* [SERVER-18356](https://jira.mongodb.org/browse/SERVER-18356) Changed the handling of the "config_base" option to ::wiredtiger_open. See
          upgrading documentation for more information.


The following statistics were removed:

* [WT-1481](https://jira.mongodb.org/browse/WT-1481) connection dhandles swept.
* [WT-1481](https://jira.mongodb.org/browse/WT-1481) connection candidate referenced.
* [WT-1481](https://jira.mongodb.org/browse/WT-1481) failed to find a slot large enough for record.
* [WT-1989](https://jira.mongodb.org/browse/WT-1989) log buffer size increases.
* [WT-1989](https://jira.mongodb.org/browse/WT-1989) slots selected for switching that were unavailable.
* [WT-2094](https://jira.mongodb.org/browse/WT-2094) log records written directly.
* [WT-2094](https://jira.mongodb.org/browse/WT-2094) record size exceeded maximum.
* [WT-2182](https://jira.mongodb.org/browse/WT-2182) pages split during eviction.

Lookaside table:

* [WT-1967](https://jira.mongodb.org/browse/WT-1967) Allow eviction of updates required by old readers.
* [WT-2074](https://jira.mongodb.org/browse/WT-2074) Fix a race between lookaside table reconciliation and checkpoints.
* [WT-2149](https://jira.mongodb.org/browse/WT-2149) Fix the order of creation of the lookaside table.
* [WT-2190](https://jira.mongodb.org/browse/WT-2190) Fix transaction visibility test that is applied to the lookaside table.
* [SERVER-21585](https://jira.mongodb.org/browse/SERVER-21585) Don't use the lookaside file until the cache is stuck full.

Issues fixed in MongoDB:

* [SERVER-18829](https://jira.mongodb.org/browse/SERVER-18829) Have pages start in the middle of the LRU queue for eviction.
* [SERVER-18838](https://jira.mongodb.org/browse/SERVER-18838) During drops, don't remove files until the metadata is durable.
* [SERVER-18875](https://jira.mongodb.org/browse/SERVER-18875) Clean up deleted pages.
* [SERVER-18899](https://jira.mongodb.org/browse/SERVER-18899) Add unit test to simulate fsyncLock.
* [SERVER-19340](https://jira.mongodb.org/browse/SERVER-19340) Avoid type aliasing in the random number generator.
* [SERVER-19445](https://jira.mongodb.org/browse/SERVER-19445) Have the oldest transaction update the oldest tracked ID.
* [SERVER-19522](https://jira.mongodb.org/browse/SERVER-19522) Try to evict internal pages with no useful child pages.
* [SERVER-19573](https://jira.mongodb.org/browse/SERVER-19573) Change row-store inserts to avoid page locking.
* [SERVER-19751](https://jira.mongodb.org/browse/SERVER-19751) Retry pthread_create on EAGAIN or EINTR.
* [SERVER-19954](https://jira.mongodb.org/browse/SERVER-19954) Don't scan tracked handles during checkpoints.
* [SERVER-19989](https://jira.mongodb.org/browse/SERVER-19989) Add a write barrier before data handles are added to shared lists.
* [SERVER-19990](https://jira.mongodb.org/browse/SERVER-19990) Don't assert on eviction of live updates from dead trees.
* [SERVER-20008](https://jira.mongodb.org/browse/SERVER-20008) Don't reset eviction walks when hitting a busy page.
* [SERVER-20159](https://jira.mongodb.org/browse/SERVER-20159) Make all readers wait while the cache is full.
* [SERVER-20193](https://jira.mongodb.org/browse/SERVER-20193) Fix obsolete transaction check.
* [SERVER-20303](https://jira.mongodb.org/browse/SERVER-20303) Tune in-memory splits when inserting large objects.
* [SERVER-20385](https://jira.mongodb.org/browse/SERVER-20385) Make WT_CURSOR::next(random) more random.
* [SERVER-21027](https://jira.mongodb.org/browse/SERVER-21027) Reverse split if there are many deleted pages.
* [SERVER-21553](https://jira.mongodb.org/browse/SERVER-21553) Enable fast-path truncate after splits.
* [SERVER-21619](https://jira.mongodb.org/browse/SERVER-21619) Don't do internal page splits after a tree is marked DEAD.
* [SERVER-21691](https://jira.mongodb.org/browse/SERVER-21691) Avoid insert stalls.

Other note worthy changes since the previous release:

* [WT-1744](https://jira.mongodb.org/browse/WT-1744) Throttle worker threads based on eviction targets.
* [WT-1845](https://jira.mongodb.org/browse/WT-1845) Allow read only transactions to commit after failure.
* [WT-1869](https://jira.mongodb.org/browse/WT-1869) Avoid doing in memory splits while checkpointing a tree.
* [WT-1942](https://jira.mongodb.org/browse/WT-1942) Add atomic implementations for PowerPC architecture.
* [WT-1962](https://jira.mongodb.org/browse/WT-1962) Make the hot_backup_lock a read/write lock.
* [WT-1963](https://jira.mongodb.org/browse/WT-1963) Fix backup cursor Java API.
* [WT-1964](https://jira.mongodb.org/browse/WT-1964) Fix a bug in the Java API when closing handles from a different thread.
* [WT-1966](https://jira.mongodb.org/browse/WT-1966) Change how the shared cache assigns priority to participants.
* [WT-1975](https://jira.mongodb.org/browse/WT-1975) Ensure previous log files are complete for forced sync.
* [WT-1977](https://jira.mongodb.org/browse/WT-1977) Improve performance of getting snapshots with many sessions.
* [WT-1978](https://jira.mongodb.org/browse/WT-1978) Better checking and tests for index cursor comparison.
* [WT-1981](https://jira.mongodb.org/browse/WT-1981) Fix a signed 32-bit integer unpacking bug.
* [WT-1982](https://jira.mongodb.org/browse/WT-1982) Fix a bug where cached overflow items were freed too early.
* [WT-1985](https://jira.mongodb.org/browse/WT-1985) Integer packing and other fixes for Python and Java.
* [WT-1986](https://jira.mongodb.org/browse/WT-1986) Fix a race renaming temporary log files.
* [WT-1989](https://jira.mongodb.org/browse/WT-1989) Improve scalability of log writes.
* [WT-1996](https://jira.mongodb.org/browse/WT-1996) Fix a bug where we would free the fist update during a page rewrite on error.
* [WT-1998](https://jira.mongodb.org/browse/WT-1998) Fixes for indexes with some rarely used key/value formats.
* [WT-2002](https://jira.mongodb.org/browse/WT-2002) Fix a bug in verify where it would panic when encountering a corrupted file.
* [WT-2007](https://jira.mongodb.org/browse/WT-2007) Statically allocate log slot buffers to a maximum size.
* [WT-2008](https://jira.mongodb.org/browse/WT-2008) Fix a bug in recovery where a file create went missing.
* [WT-2009](https://jira.mongodb.org/browse/WT-2009) Apply tracked metadata operations post-commit.
* [WT-2012](https://jira.mongodb.org/browse/WT-2012) Fix a bug updating the oldest ID.
* [WT-2013](https://jira.mongodb.org/browse/WT-2013) Add gcc asm definitions for ARM64.
* [WT-2014](https://jira.mongodb.org/browse/WT-2014) Fix a bug in checkpoints where files could be flushed in the wrong order.
* [WT-2015](https://jira.mongodb.org/browse/WT-2015) Fix a bug in error handling during block open.
* [WT-2017](https://jira.mongodb.org/browse/WT-2017) Once an eviction server thread is started keep it running.
* [WT-2019](https://jira.mongodb.org/browse/WT-2019) Fix a logic bug tracking the maximum transaction ID in clean trees.
* [WT-2020](https://jira.mongodb.org/browse/WT-2020) Clarify checksum error failure messages.
* [WT-2021](https://jira.mongodb.org/browse/WT-2021) Fix a bug moving the oldest ID forward (introduced by [WT-1967](https://jira.mongodb.org/browse/WT-1967)).
* [WT-2022](https://jira.mongodb.org/browse/WT-2022) Fix a bug not releasing a handle when opening a non-existent index cursor.
* [WT-2023](https://jira.mongodb.org/browse/WT-2023) Improve locking primitives: simplify read-write lock operations.
* [WT-2029](https://jira.mongodb.org/browse/WT-2029) Improve scalability of statistics.
* [WT-2031](https://jira.mongodb.org/browse/WT-2031) Log slot revamp.
* [WT-2032](https://jira.mongodb.org/browse/WT-2032) Improve next_random cursors to work with small trees.
* [WT-2034](https://jira.mongodb.org/browse/WT-2034) Improve shared cache balancing algorithm.
* [WT-2035](https://jira.mongodb.org/browse/WT-2035) For index cursors, keep track of which column groups need to be positioned.
* [WT-2036](https://jira.mongodb.org/browse/WT-2036) Make handle sweeps more robust.
* [WT-2037](https://jira.mongodb.org/browse/WT-2037) Only write a checkpoint to the log on close if it wasn't.
* [WT-2038](https://jira.mongodb.org/browse/WT-2038) Avoid long scans holding the handle list lock.
* [WT-2039](https://jira.mongodb.org/browse/WT-2039) Add error check and unit test for log records over 4 GB.
* [WT-2042](https://jira.mongodb.org/browse/WT-2042) Only try to evict tombstones that are visible to all readers.
* [WT-2045](https://jira.mongodb.org/browse/WT-2045) Don't let the eviction server do slow reconciliation, it can stall eviction.
* [WT-2046](https://jira.mongodb.org/browse/WT-2046) Add a statistic for search restarts.
* [WT-2047](https://jira.mongodb.org/browse/WT-2047) Fix a bug in the random generator code to handle an uninitialized state.
* [WT-2050](https://jira.mongodb.org/browse/WT-2050) Show size with memory allocation errors.
* [WT-2053](https://jira.mongodb.org/browse/WT-2053) Fix a bug in disk verify messages.
* [WT-2056](https://jira.mongodb.org/browse/WT-2056) Reorder btree cursor close so stats are maintained correctly.
* [WT-2057](https://jira.mongodb.org/browse/WT-2057) Remove the verbose configuration when writing the base configuration file.
* [WT-2058](https://jira.mongodb.org/browse/WT-2058) Fix an alignment bug in the mutex and log-slot code.
* [WT-2059](https://jira.mongodb.org/browse/WT-2059) Include non-aggregated stats in cursor results.
* [WT-2062](https://jira.mongodb.org/browse/WT-2062) Try harder to make progress on in-memory splits.
* [WT-2064](https://jira.mongodb.org/browse/WT-2064) Don't spin indefinitely waiting for the handle list lock in eviction.
* [WT-2066](https://jira.mongodb.org/browse/WT-2066) Update the oldest transaction ID from eviction.
* [WT-2068](https://jira.mongodb.org/browse/WT-2068) Protect discarding handles with the handle list lock.
* [WT-2075](https://jira.mongodb.org/browse/WT-2075) Fix a hang in logging with parallel workload.
* [WT-2078](https://jira.mongodb.org/browse/WT-2078) Fix a bug in error handling with statistics cursors.
* [WT-2081](https://jira.mongodb.org/browse/WT-2081) Make verify progress reporting less verbose.
* [WT-2085](https://jira.mongodb.org/browse/WT-2085) Run some of the log_server threads operations more frequently.
* [WT-2086](https://jira.mongodb.org/browse/WT-2086) Add a statistic to track when eviction finds a page that can be split.
* [WT-2089](https://jira.mongodb.org/browse/WT-2089) Relax restrictions on multiblock eviction and in-memory splits.
* [WT-2090](https://jira.mongodb.org/browse/WT-2090) Fix a bug in the Windows OS layer that swallowed error returns.
* [WT-2092](https://jira.mongodb.org/browse/WT-2092) Free log condition variables after all threads are joined.
* [WT-2093](https://jira.mongodb.org/browse/WT-2093) Use the C99 bool type to clarify when functions return true/false.
* [WT-2094](https://jira.mongodb.org/browse/WT-2094) Eliminate direct write and record unbuffered log records.
* [WT-2097](https://jira.mongodb.org/browse/WT-2097) Reintroduce immediate waits when forced eviction is necessary.
* [WT-2100](https://jira.mongodb.org/browse/WT-2100) Rename evict to evict_queue so it's easier to search for.
* [WT-2101](https://jira.mongodb.org/browse/WT-2101) Don't update the logging ckpt_lsn on clean shutdown.
* [WT-2102](https://jira.mongodb.org/browse/WT-2102) Fix a hang in log slot join when forcing log writes.
* [WT-2105](https://jira.mongodb.org/browse/WT-2105) Fix a bug where we could reference an invalid memory address if a file is corrupted on disk.
* [WT-2108](https://jira.mongodb.org/browse/WT-2108) Rework in-memory page rewrite support (WT_PM_REC_REWRITE).
* [WT-2114](https://jira.mongodb.org/browse/WT-2114) Make application eviction fairer.
* [WT-2115](https://jira.mongodb.org/browse/WT-2115) Don't skip truncated pages that are part of a checkpoint.
* [WT-2116](https://jira.mongodb.org/browse/WT-2116) Add diagnostic checks for stuck cache and dump the state.
* [WT-2119](https://jira.mongodb.org/browse/WT-2119) Don't evict clean multiblock pages with overflow items during checkpoints.
* [WT-2126](https://jira.mongodb.org/browse/WT-2126) Clean up if there is an error during splits.
* [WT-2127](https://jira.mongodb.org/browse/WT-2127) Deepen the tree more regularly to avoid wide internal pages.
* [WT-2128](https://jira.mongodb.org/browse/WT-2128) When decoding huffman encoding during salvage it's possible to have fewer bits than the
          symbol length during decoding, if the value has been corrupted.
* [WT-2131](https://jira.mongodb.org/browse/WT-2131) Switch to using a lock to control page splits to avoid starvation.
* [WT-2132](https://jira.mongodb.org/browse/WT-2132) Make debug dump function more robust to errors.
* [WT-2134](https://jira.mongodb.org/browse/WT-2134) Flush all buffered log records in log_flush.
* [WT-2135](https://jira.mongodb.org/browse/WT-2135) Fix log_only setting for backup cursor. Fix initialization.
* [WT-2137](https://jira.mongodb.org/browse/WT-2137) Check the sync_lsn is in the correct file before moving it forward.
* [WT-2139](https://jira.mongodb.org/browse/WT-2139) Fix a transaction visibility bug in read-uncommitted transactions.
* [WT-2146](https://jira.mongodb.org/browse/WT-2146) Improve performance when searching for short keys.
* [WT-2148](https://jira.mongodb.org/browse/WT-2148) Fix a compiler warning in encoding functions.
* [WT-2153](https://jira.mongodb.org/browse/WT-2153) Fix bug. Now we always need to start the log_server thread.
* [WT-2154](https://jira.mongodb.org/browse/WT-2154) Make btree dump safer.
* [WT-2155](https://jira.mongodb.org/browse/WT-2155) Remove last use of F_CAS_ATOMIC and the associated macro.
* [WT-2156](https://jira.mongodb.org/browse/WT-2156) Allow eviction workers to restart.
* [WT-2157](https://jira.mongodb.org/browse/WT-2157) Fix a bug where a failed page split could lead to incomplete checkpoints.
* [WT-2159](https://jira.mongodb.org/browse/WT-2159) Don't check the config twice in one path.
* [WT-2162](https://jira.mongodb.org/browse/WT-2162) Add null pointer check, needed after an index is dropped.
* [WT-2164](https://jira.mongodb.org/browse/WT-2164) Prevent another LSM chunk checkpoint while the first is still in progress.
* [WT-2165](https://jira.mongodb.org/browse/WT-2165) Stop using FALLOC_FL_KEEP_SIZE flag when pre-allocating files.
* [WT-2167](https://jira.mongodb.org/browse/WT-2167) Switch recovery to using an internal session.
* [WT-2170](https://jira.mongodb.org/browse/WT-2170) Protect the turtle file with a lock.
* [WT-2174](https://jira.mongodb.org/browse/WT-2174) Avoid the table list lock when creating a size only statistics cursor.
* [WT-2178](https://jira.mongodb.org/browse/WT-2178) In-memory storage engine support.
* [WT-2179](https://jira.mongodb.org/browse/WT-2179) Added decorator to mark txn13 as part of the --long test suite.
* [WT-2180](https://jira.mongodb.org/browse/WT-2180) Remove cursor.{search,search-near,remove} key size validation.
* [WT-2182](https://jira.mongodb.org/browse/WT-2182) When internal pages grow large enough, split them into their parents.
* [WT-2184](https://jira.mongodb.org/browse/WT-2184) Fix log scan bug when final record has many trailing zeros.
* [WT-2185](https://jira.mongodb.org/browse/WT-2185) Don't do reverse splits when closing a file.
* [WT-2187](https://jira.mongodb.org/browse/WT-2187) Add flag for flushing a slot.
* [WT-2189](https://jira.mongodb.org/browse/WT-2189) Update flag set and clear macros to be less error prone.
* [WT-2191](https://jira.mongodb.org/browse/WT-2191) In-memory disk image no longer the same as saved updates.
* [WT-2192](https://jira.mongodb.org/browse/WT-2192) Fix the logic around checking whether internal page is evictable.
* [WT-2193](https://jira.mongodb.org/browse/WT-2193) Handle read-committed metadata checkpoints during snapshot transactions.
* [WT-2194](https://jira.mongodb.org/browse/WT-2194) Java close callbacks should handle cursors that Java code did not open.
* [WT-2195](https://jira.mongodb.org/browse/WT-2195) Fix a hang after giving up on a reverse split.
* [WT-2196](https://jira.mongodb.org/browse/WT-2196) Fix error handling in size only statistics.
* [WT-2199](https://jira.mongodb.org/browse/WT-2199) Fix transaction sync inconsistency.
* [WT-2203](https://jira.mongodb.org/browse/WT-2203) Release an allocated page on error.
* [WT-2204](https://jira.mongodb.org/browse/WT-2204) Don't take a local copy of page->modify until we know the page is dirty.
* [WT-2206](https://jira.mongodb.org/browse/WT-2206) Change cache operations from flags to an enumeration.
* [WT-2207](https://jira.mongodb.org/browse/WT-2207) Track whenever a session has a handle exclusive.
* [WT-2210](https://jira.mongodb.org/browse/WT-2210) Raw compression fails if row-store recovery precedes column-store recovery.
* [WT-2212](https://jira.mongodb.org/browse/WT-2212) Add a "use_environment" config to ::wiredtiger_open.
* [WT-2218](https://jira.mongodb.org/browse/WT-2218) Add truncate stats.
* [WT-2219](https://jira.mongodb.org/browse/WT-2219) Enhancements to in-memory testing.
* [WT-2220](https://jira.mongodb.org/browse/WT-2220) Update time comparison macros.
* [WT-2222](https://jira.mongodb.org/browse/WT-2222) Add statistics for named snapshots.
* [WT-2224](https://jira.mongodb.org/browse/WT-2224) Track which deleted refs are discarded by a split.
* [WT-2228](https://jira.mongodb.org/browse/WT-2228) Avoid unnecessary raw-compression calls.
* [WT-2237](https://jira.mongodb.org/browse/WT-2237) Have threads publish unique transaction IDs so that updates always become visible
          immediately on commit.
* [WT-2241](https://jira.mongodb.org/browse/WT-2241) Use a lock to protect transaction ID allocation.
* [WT-2243](https://jira.mongodb.org/browse/WT-2243) Don't keep transaction IDs pinned for reading from checkpoints.
* [WT-2244](https://jira.mongodb.org/browse/WT-2244) Trigger in-memory splits sooner.
* [WT-2248](https://jira.mongodb.org/browse/WT-2248) WT_SESSION::close is updating WT_CONNECTION_IMPL.default_session.
* [WT-2249](https://jira.mongodb.org/browse/WT-2249) Keep eviction stuck until cache usage is under 100%.
* [WT-2250](https://jira.mongodb.org/browse/WT-2250) Minor fix.  Use SET instead of increment for stat.
* [WT-2251](https://jira.mongodb.org/browse/WT-2251) Free addresses when we discard deleted page references.
* [WT-2253](https://jira.mongodb.org/browse/WT-2253) Evict pages left behind by in-memory splits.
* [WT-2257](https://jira.mongodb.org/browse/WT-2257) Fixes when given multiple thread workload configurations.
* [WT-2260](https://jira.mongodb.org/browse/WT-2260) Avoid adding internal pages to the eviction queue

WiredTiger release 2.6.1, 2015-05-13
------------------------------------

The WiredTiger 2.6.1 release contains new features, minor API changes and bug
fixes.

New features:

* Move the sync configuration setting from WT_SESSION::begin_transaction to
  WT_SESSION::commit_transaction. Change the setting from a boolean to a
  string. See upgrading documentation for more information.
  refs [WT-1908](https://jira.mongodb.org/browse/WT-1908)

* Add the ability to flag a transaction to be flushed asynchronously on
  commit via a new sync=[background] configuration option. Add a new
  WT_SESSION::transaction_sync API to wait for asynchronous flushes to
  complete.
  refs [WT-1908](https://jira.mongodb.org/browse/WT-1908), #1943

* Add the ability to create a named in-memory snapshot via a new
  WT_SESSION::snapshot API.
  refs [WT-1839](https://jira.mongodb.org/browse/WT-1839)

* Add the ability to disable write ahead logging at a per-table granularity.
  Accessed via log=(enabled) configuration for WT_SESSION::create API.
  Partial logging has serious implications for recovery, it should be used
  with caution.
  refs #1989


Other noteworthy changes:

* Fix several bugs related to syncing files for checkpoint durability.
  refs [WT-1944](https://jira.mongodb.org/browse/WT-1944)

* Fix a segfault during checkpoint where we could attempt to access a file
  that was in the process of being dropped in the background.
  refs [SERVER-18014](https://jira.mongodb.org/browse/SERVER-18014)

* Fix a segfault during eviction where we could attempt to evict a page from
  a tree that was in the process of being dropped in the background.
  refs [SERVER-18460](https://jira.mongodb.org/browse/SERVER-18460)

* Fix a bug where WiredTiger could segfault in a workload with lots of cache
  pressure.
  refs [WT-1937](https://jira.mongodb.org/browse/WT-1937)

* Fix a performance issue with WT_SESSION::compact, where it would spend a
  long time compacting tables that had no space to reclaim.
  refs [WT-1953](https://jira.mongodb.org/browse/WT-1953)

* Fix a bug where accessing an overflow item could return WT_NOTFOUND
  incorrectly. The issue was related to an invalid transaction visibility
  check.
  refs [WT-1745](https://jira.mongodb.org/browse/WT-1745)

* Improve performance and avoid changing files on startup if no recovery is
  required by avoiding the creation of unnecessary checkpoints and log
  records for files that haven't changed.
  refs [WT-1936](https://jira.mongodb.org/browse/WT-1936)

* Improve how we handle create of a table, if a file with the same name
  already exists (possibly from an earlier failed create).
  refs #1974

* Fix compiler warnings for LZ4 implementation on Windows.
  refs #2006

* Fix a bug in the WiredTiger command line utility where it could create a
  base configuration file for an existing database, if there had been a
  crash while creating the database.
  refs [WT-1943](https://jira.mongodb.org/browse/WT-1943)

* Fix a build problem where recent versions of RedHat would fail to detect
  posix_memalign presence correctly.
  refs [WT-1951](https://jira.mongodb.org/browse/WT-1951)

* Fix several problems with how we create, recover and backup databases.
  Related to order of creation and differences between Windows and POSIX
  file system semantics.
  refs #1993

* Fix a bug where we could flush the log file more often than required if
  using auto-commit transactions.
  refs [WT-1949](https://jira.mongodb.org/browse/WT-1949)

* Fix a performance problem in LSM, where trees created with an initial bulk
  load could choose poor merges.
  refs [WT-1947](https://jira.mongodb.org/browse/WT-1947)

* Improve how we decide whether to deepen a tree during an internal split
  operation. Append workloads could create trees that were excessively deep.

* Fix a bug in LSM which could lead to a hang on connection close.
  refs [WT-1935](https://jira.mongodb.org/browse/WT-1935)

* Fix a bug in the internal random number generator, where concurrent calls
  could lead to invalid sequences. Never seen in the wild.


WiredTiger release 2.6.0, 2015-05-13
------------------------------------

The WiredTiger 2.6.0 release contains new features, minor API changes and many
bug fixes.

New features:

* Add support for "at rest" encryption of WiredTiger databases via a new
  encryption API.
  refs [WT-1822](https://jira.mongodb.org/browse/WT-1822)

* Add support for bulk load in LSM trees (previously the bulk configuration
  for cursor create was ignored by LSM trees).
  refs [SERVER-18321](https://jira.mongodb.org/browse/SERVER-18321), [WT-1922](https://jira.mongodb.org/browse/WT-1922)

* Add enhanced compression support for LZ4. Change is not compatible with
  tables created with LZ4 compression using earlier versions of WiredTiger.
  See the upgrading documentation for more information.

API and behavior changes:

* Enhance performance of WT_SESSION::drop with force enabled (mark the table
  as dead and discard it in the background without writing any content to disk,
  rather than flushing content from the cache).
  refs [WT-1894](https://jira.mongodb.org/browse/WT-1894)

* Add an API to validate configuration strings.
  refs [WT-1739](https://jira.mongodb.org/browse/WT-1739)

* Disallow the cache_resident flag on LSM trees.
  refs [WT-1905](https://jira.mongodb.org/browse/WT-1905)

* Enhance the controls for how aggressively idle handles are closed, update the
  wiredtiger_open file_manager configuration options to expose that control.
  refs [SERVER-17907](https://jira.mongodb.org/browse/SERVER-17907), [WT-1856](https://jira.mongodb.org/browse/WT-1856)


Significant bug fixes and performance enhancements:

* Fix bugs in checkpoint: committing the checkpoint transaction before it was
  safe, failure to sync the metadata file before updating the turtle file.
  refs [SERVER-18316](https://jira.mongodb.org/browse/SERVER-18316)

* Don't attempt to validate configuration settings for extensions (collators,
  compressors, encryptors, extractors). The extension may be valid but not yet
  loaded so it is not possible to validate.

* Check the magic and version numbers in log files when first opening them.

* Fix a bug with cache leaf size accounting for statistics.
  refs [WT-1885](https://jira.mongodb.org/browse/WT-1885), [WT-1919](https://jira.mongodb.org/browse/WT-1919)

* Fix a bug where checkpoint could skip a page that was rewritten in memory.
  refs [WT-1946](https://jira.mongodb.org/browse/WT-1946)

* Fix a bug in WT_CURSOR::search_near with a random cursor where deleted
  records could be returned.
  refs [WT-1921](https://jira.mongodb.org/browse/WT-1921), [WT-1944](https://jira.mongodb.org/browse/WT-1944)

* Fix a bug in handle close where we could fail to clear the open handle
  flag.
  refs [WT-1915](https://jira.mongodb.org/browse/WT-1915)

* Fix a bug in in-memory splits, don't allow any other eviction of a page if
  the page is being split.
  refs [WT-1916](https://jira.mongodb.org/browse/WT-1916), [WT-1917](https://jira.mongodb.org/browse/WT-1917)

* Fix a bug in btree open where failure while opening a checkpoint may not
  clean up completely.
  refs [WT-1598](https://jira.mongodb.org/browse/WT-1598)

* Fix a performance problem where long running transactions could continually
  scan long update chains looking for obsolete entries, when there is no chance
  of finding any.
  refs [WT-1913](https://jira.mongodb.org/browse/WT-1913)

* Fix a performance problem where many threads accessing a single page could
  prevent WiredTiger from evicting or splitting the page.
  refs [WT-1912](https://jira.mongodb.org/browse/WT-1912)

* Fix a source of deadlock bugs by restructuring how we lock handles. Clean
  up the definition of when it is safe to acquire different locks.
  refs [WT-1598](https://jira.mongodb.org/browse/WT-1598)

* Fix a bug where we could evict pages from a file marked as cache resident,
  add optimizations for cache resident files.
  refs [SERVER-18192](https://jira.mongodb.org/browse/SERVER-18192)

* Fix a deadlock related to LSM (cases where closing a file with an existing
  checkpoint could self deadlock).
  refs [WT-716](https://jira.mongodb.org/browse/WT-716)

* Only split large in-memory pages if there is a need to keep them in cache
  (otherwise, it is better to reconcile and evict them immediately).
  refs [WT-1890](https://jira.mongodb.org/browse/WT-1890), [WT-1896](https://jira.mongodb.org/browse/WT-1896)

* Fix a race on shutdown where the eviction server could still have been
  accessing files while they were being closed.
  refs [WT-1893](https://jira.mongodb.org/browse/WT-1893)

* Fix a case where we could run recovery unnecessarily if there were only
  non-data changing log records since the last checkpoint.
  refs [WT-1892](https://jira.mongodb.org/browse/WT-1892)

* Update API documentation to explain internal session handle usage. This
  allows users to do specific calculations based on the session_max setting.

* Fix a bug in LSM where updates with overwrite could be skipped incorrectly.
  refs BF-829

* Fix a cursor bug where searching and traversing in different combinations
  could lead to data buffers being freed before they should be.
  refs [WT-1887](https://jira.mongodb.org/browse/WT-1887)

* Fix a bug when closing bulk cursors, where a file could be left open.

* Fix a bug on Windows related to truncating files (SetEndofFile does not
  ignore truncation requests like POSIX fallocate).

* Fix a bug in file truncate, where we could truncate to the wrong place if
  there was a race extending the file at the same time.
  refs [WT-1871](https://jira.mongodb.org/browse/WT-1871)

* Fix a bug in reconciliation where page boundary structures could reference
  freed memory.
  refs [WT-1852](https://jira.mongodb.org/browse/WT-1852)

* Change the WT_CURSOR::search and WT_CURSOR::search_near API to first check
  any currently pinned page before starting a regular descending search.

* Fix a bug in recovery where an error was returned if a transaction spanned
  an entire log file.

* Fix a bug where recovery could be unnecessarily run during startup.

* Enhance the Python cursor API to allow setting keys and values using array
  notation.

* Fix a bug where creating a column store with large gaps in the key range
  would lead to poor performance.
  refs [WT-1807](https://jira.mongodb.org/browse/WT-1807).

* Improve the performance of the core btree search routine by using low-level
  x86 vectorized search instructions.


WiredTiger release 2.5.3, 2015-04-22
------------------------------------

The WiredTiger 2.5.3 release contains important bug fixes.

API and behavior changes:

* Update configuration string parsing to always be case sensitive. See
  upgrading documentation for more information.

* Change the statistics cursor WT_CURSOR::reset method to re-load statistics
  values. See upgrading documentation for more information.
  refs [WT-1533](https://jira.mongodb.org/browse/WT-1533)

* Only align buffers on Linux if direct I/O is configured. See upgrading
  documentation for more information.

* Fixes to how and when idle handles are closed.
  refs [WT-1808](https://jira.mongodb.org/browse/WT-1808), [WT-1811](https://jira.mongodb.org/browse/WT-1811), [WT-1814](https://jira.mongodb.org/browse/WT-1814)

* Add some new statistics related to cache usage.

* Add new configuration strings to provide control of how often handles are
  are reviewed for closure, and how long a handle needs to be idle before
  it is closed. The option is via the wiredtiger_open API,
  file_manager=(close_idle_time=30,close_scan_interval=10)

* Add support for running WiredTiger command line utilities without logging.
  refs [WT-1732](https://jira.mongodb.org/browse/WT-1732)

* Update the async configuration API to allow a minimum of 1. That is change:
  async=(ops_max=X) so that the minimum value is now 1 the old minimum was 10.

Bug fixes and other significant changes:

* Fixes and improvements to Windows support.

* Fix several bugs that prevent page eviction.
  refs [SERVER-16662](https://jira.mongodb.org/browse/SERVER-16662), [SERVER-17382](https://jira.mongodb.org/browse/SERVER-17382), [WT-1777](https://jira.mongodb.org/browse/WT-1777)

* Fix a race when stopping eviction workers on shutdown.
  refs [WT-1698](https://jira.mongodb.org/browse/WT-1698)

* Fix a bug where if the system crashes during create the base configuration
  file could be left in an invalid state.
  refs [WT-1775](https://jira.mongodb.org/browse/WT-1775), [WT-1776](https://jira.mongodb.org/browse/WT-1776), [SERVER-17571](https://jira.mongodb.org/browse/SERVER-17571)

* Fix cases where WT_SESSION::truncate could return EBUSY when a schema level
  operation is running - for example a checkpoint.
  refs [WT-1404](https://jira.mongodb.org/browse/WT-1404), [WT-1643](https://jira.mongodb.org/browse/WT-1643)

* Fix a bug in logging - where we could fail to update the end of the log
  when there is a gap in the log records.
  refs [WT-1766](https://jira.mongodb.org/browse/WT-1766), [SERVER-17569](https://jira.mongodb.org/browse/SERVER-17569), [SERVER-17613](https://jira.mongodb.org/browse/SERVER-17613)

* Fix how we account for space used in the cache to be more accurate.
refs [SERVER-17424](https://jira.mongodb.org/browse/SERVER-17424)

* Fix a bug where we could leak memory if opening a statistics cursor failed.
  refs [WT-1760](https://jira.mongodb.org/browse/WT-1760)

* Fix a bug where a single page could consume a large portion of the cache.
  Leading to cases where a small cache size could result in a hang.
  refs [WT-1759](https://jira.mongodb.org/browse/WT-1759)

* Fix a bug in the eviction server that could cause a WT_PANIC. The issue
  was encountered when the number of open handles exceeded the configured
  number of hazard pointers.
  refs [SERVER-17551](https://jira.mongodb.org/browse/SERVER-17551)

* Fix a bug parsing huffman configuration options that could lead to a segfault.

* Fix accounting in btree statistics gathering, so page tracking is accurate.
  refs [WT-1733](https://jira.mongodb.org/browse/WT-1733)

* Fix a memory leak in cache management, where a race during page split could
  leave a key structure allocated.
  refs [WT-1582](https://jira.mongodb.org/browse/WT-1582), [WT-1747](https://jira.mongodb.org/browse/WT-1747)

* Enhance checkpoint tracking code to allow eviction in files once the
  checkpoint has finished processing them. This helps reduce the impact of
  checkpoints on workloads with cache pressure.
  refs [WT-1745](https://jira.mongodb.org/browse/WT-1745)

* Fix when aggregation is set on statistics fields. Fixes problems with
  visualizing statistics via wtstats graphs.
  refs [WT-1742](https://jira.mongodb.org/browse/WT-1742)

* Change how checkpoints use empty blocks in on-disk files. Use a first-fit
  algorithm.


WiredTiger release 2.5.2, 2015-03-23
------------------------------------

The WiredTiger 2.5.2 release contains important bug fixes.

API changes:

* Allow memory_page_max to be at most a quarter of the cache size not half.
  This avoids operations getting stalled due to the cache being filled with
  one or two pages.

Bug fixes and other important changes:

* When skipping a dirty page during a checkpoint, make sure the tree is marked
  dirty.
  refs SUPPORT-1248, [SERVER-17319](https://jira.mongodb.org/browse/SERVER-17319), [SERVER-17506](https://jira.mongodb.org/browse/SERVER-17506), #1404, #1643, #1721, #1735

* Fix a bug in range truncate where we could remove the wrong records.
  refs [SERVER-17345](https://jira.mongodb.org/browse/SERVER-17345)

* Fix a bug in LSM management where we could let the cache get full - leading
  to a operations being blocked.
  refs #1720

* Fix several bugs in the checkpoint implementation that could lead to a tree
  being marked clean when it had updates in memory. If shutdown occurred at
  a specific time those updates would be discarded without being written.
  refs SUPPORT-1248

* Fix some bugs in logging - where system crashes could leave empty files that
  would stop recovery working on re-start.
  refs #1717, #1719, [SERVER-17451](https://jira.mongodb.org/browse/SERVER-17451)

* Fix a bug in recovery. Force recovery instead of returning an error if the
  LSN given doesn't exist.
  refs #1700, #1704

* Move writing into log worker thread to avoid latency in application threads.
  refs #1683

* Fix a bug in the reconfigure API related to adhering to shared cache quotas.
  refs #1712, #1713

* Fix a bug in WiredTiger statistics where we weren't recording overflow
  record statistics.
  refs #1520, #1703, #1711

* Several enhancements to eviction of large pages including:
  - Don't do forced eviction of a page if it is the current walk point.
  - Don't update the read generation on page in if it's set to oldest.
  - Clear the walk positions before the eviction server sleeps.
  - Reverse the direction of the LRU walk regularly.
  - Add all pages that would block to the eviction queue.
  - If evicting dirty pages use the worker threads not the server.
 refs #1706

* Use raw mode when dumping indices.
  refs #1709

* Fix a bug where we could race opening files while a WT_CONNECTION::close is
  in progress.
  refs [SERVER-17319](https://jira.mongodb.org/browse/SERVER-17319)

* Fix a bug in LSM where snapshot transaction updates could have the wrong
  visibility check applied. Leading to invalid updates.
  refs #1641, #1701, #1702

* Fix a bug in checkpoint where it could get an EBUSY return unnecessarily.
  refs #1404, #1589, #1705

* Fix a bug when writing a page from memory to disk (reconciling). We could
  overwrite the end of a temporary buffer in some cases.
  refs #1697, #1699

* Sometimes we would choose a sub-optimal layout for on disk pages when
  writing them out from memory.
  refs #1699

* Improve the performance of in-memory lookups by making the content of the
  page structure more cache friendly.


WiredTiger release 2.5.1, 2015-03-07
------------------------------------

The WiredTiger 2.5.1 release contains new features, minor API changes and many
bug fixes.

New features and API changes:

* Add a new "log=(recover=on)" option to ::wiredtiger_open. The default value
  is "on", if set to "error", recovery won't be run on startup. An error will be
  returned if recovery is needed but disabled. This option is mainly to support
  the WiredTiger command line utility.
  refs #1651

* Add a new WT_CURSOR::equals method that returns when the cursors are equal,
  intended as a fast-path for cursor comparison.

* Change how statistics work when there are checkpoints for an object. We
  used to aggregate statistics for all open checkpoints and the current
  handle. We now only return statistics for the object being queried. See
  upgrading documentation for further information.

* Add a mode to LSM that allows us to limit the size of a tree by dropping
  old chunks. Enabled via "lsm=(chunk_count_limit=0)", default to 0 which
  disables the functionality. Note that enabling this feature discards old
  data automatically.
  refs #1652

* Update the WiredTiger printlog command line utility to generate JSON that
  can be parsed by third party tools.
  refs #1438

* Change how we track memory allocation overhead. We used to apply a fixed
  size for each allocation (which was difficult to track). The overhead
  can be specified via a new configuration option to ::wiredtiger_open using
  "cache_overhead=8". The value is a percentage and the default is 8.
  refs #1564 #1565

* Major enhancements to the wtstats.py tool that translates WiredTiger
  statistics into an HTML graph. The tool now generates interactive graphs
  and no longer requires third party Python libraries to be installed.

* Add a new WT_CURSOR::reconfigure method for cursor configuration.
  See API documentation for more information.
  refs #1381

* Add a new WT_SESSION::strerror method, a thread-safe alternative to
  ::wiredtiger_strerror.
  refs #1516

Bug fixes for bugs that could cause data inconsistency:

* Fix a bug in recovery where we could lose track of file identifiers and
  apply updates to the wrong file.
  refs [SERVER-17142](https://jira.mongodb.org/browse/SERVER-17142) [SERVER-17131](https://jira.mongodb.org/browse/SERVER-17131)

* Fix several bugs in data consistency that could cause corruption when
  restarting after a hard crash, including:
  - A bug in table create that could cause recovery to fail.
  refs [SERVER-17204](https://jira.mongodb.org/browse/SERVER-17204)

Other significant changes:

* Significant tuning enhancements for the WiredTiger cache, including:

 - Avoiding stalls due to evicting large pages
 - Better algorithms for getting application threads to help with cache
   management without interfering with operation latencies.
 - Better algorithms for maintaining the cache when there are a few very hot
   pages (e.g: append workloads). [SERVER-17344](https://jira.mongodb.org/browse/SERVER-17344)
 - Freeing obsolete references more aggressively, which saves space and
   reduces traversal overhead when there are lots of updates or deletes.
   refs [SERVER-17195](https://jira.mongodb.org/browse/SERVER-17195), #1647
 - Fix a bug that could cause a data loss if we split a large page into
   multiple smaller pages and attempted to evict the page at the same time.
   refs #1583 #1563 [SERVER-16868](https://jira.mongodb.org/browse/SERVER-16868)

* Significant improvements to the cursor truncate implementation,
  especially for workloads that periodically truncate from the start of
  the file.
  refs [SERVER-17141](https://jira.mongodb.org/browse/SERVER-17141)

* Fix a bug in eviction where reconfiguring the number of eviction threads
  could result in a segfault.
  refs [SERVER-17293](https://jira.mongodb.org/browse/SERVER-17293)

* Significant bug fixes and performance enhancements to the logging subsystem
  including:
  - Avoid yielding excessively to avoid CPU overhead when there are many
    active sessions.
    refs #1610
  - The log close thread needs to wait for outstanding writes. #1571
  - Create a new utility thread to close and fsync log files. #1560
  - Ensure that log files are closed in sequence. #1555
  - Ensure that log file create appears atomic. #1482
  - Fix a race between connection close and switching log files that could
    lead to a new log file being in an undefined state. #1480

* Added support for advanced options to the WiredTiger verify command line
  tool.

* Fix a bug in our conflict detection algorithm, where we were failing to
  detect some write-write conflicts in no-overwrite cursors.
  refs [SERVER-16351](https://jira.mongodb.org/browse/SERVER-16351)

* Significant bug fixes when writing pages to disk, including:
  - Stop double count the on-disk header when choosing split points. refs #1655
  - Fill the first and second pages as much as possible when splitting.
    refs #1282
  - Improve the algorithm for fitting large items onto pages when splitting.
    refs #1630 #1631
  - Fix a bug when using raw compression where we could overflow allocated
    memory.
    refs [SERVER-16664](https://jira.mongodb.org/browse/SERVER-16664)

* Fix several cases where WT_SESSION::verify and WT_SESSION::salvage could
  return EBUSY unnecessarily.
  refs #1404 [SERVER-16457](https://jira.mongodb.org/browse/SERVER-16457)

* Fix a bug where racing between discarding and updating a tree returned an
  error to the application.
  refs #1618 [SERVER-17048](https://jira.mongodb.org/browse/SERVER-17048)

* Fix a bug where opening a statistics cursor in parallel with a checkpoint
  could lead to a deadlock.
  refs #1575 [SERVER-16738](https://jira.mongodb.org/browse/SERVER-16738)

* Change the shared cache implementation to use cache read pressure rather
  than write pressure to determine how best to share memory (as checkpoints
  skew write pressure as a metric).
  refs #1569

* Fix a bug where a deadlock could occur if a checkpoint starts in parallel to
  compact operations.
  refs #1589 [SERVER-16967](https://jira.mongodb.org/browse/SERVER-16967)

* Fix a bug in how we parse Huffman-encoding configuration settings during
  WT_SESSION::create.
  refs #1417 #1536

* Fix a bug where the custom extractor terminate callback was being made twice.
  refs #1503

* Add a new mode to the eviction server where it writes out some pages even
  though the eviction triggers have not yet been reached.

* Fix several issues reported by COVERITY static analysis tool.

WiredTiger release 2.5.0, 2014-12-24
------------------------------------

The WiredTiger 2.5.0 release contains significant new features, API changes
and many bug fixes.

Now that WiredTiger is part of MongoDB, we are tracking issues related to
MongoDB usage of WiredTiger in the MongoDB JIRA system.  Some entries in
the changelog now reference JIRA tickets that can be found at:

  http://jira.mongodb.org

New features and API changes:

* Add support for storing large values on-page in a btree rather than in
  an overflow item.  This is useful for workloads that want to keep large
  items in cache - since WiredTiger overflow items are never cached.
  It is configured via new `leaf_value_max` configuration setting.  This
  enhancement led to the deprecation of internal_item_max and leaf_item_max
  configuration settings, see upgrading documentation for further
  information. [#1282]

* Add support for compressing log files.  When configured each compressible
  log record will be compressed.  This is configure with the
  `log=(compressor=X)` configuration setting.  See upgrading documentation
  for further information. [#1359]

* No longer return EBUSY when opening a bulk cursor, verifying or salvaging
  a database if a checkpoint is currently running.  This allows
  applications to do these exclusive operations without shutting down the
  checkpoint server thread.  [#1397] [#1404] [SERVER-16236](https://jira.mongodb.org/browse/SERVER-16236) [SERVER-16457](https://jira.mongodb.org/browse/SERVER-16457)

* Add support for immutable indexes. [#1344]

* Added several new statistics, improved accuracy for some statistics
  tracking and simplified mechanism for querying a particular statistic.
  [#1505]

* Have the eviction server write out unnecessary pages prior to the cache
  reaching the configured eviction trigger size.  This can reduce the
  amount of eviction application threads do when configured with a large
  cache.

* Several enhancements to managing how long we keep files open

* Revert a change in the 2.4.1 release that caused the WT_ROLLBACK (and
  deprecated WT_DEADLOCK) error return to map to different numeric values.
  Applications should ensure they are compiling against the same version
  of the wiredtiger.h header file as the library they link against,
  otherwise odd behavior will be experienced.

* Support setting configuration strings to "none" as being equivalent to an
  empty string in most cases. [#1417]

* Enhance the hot backup implementation to allow recovery to be run between
  incremental backups. [#1183]

Other significant changes:

* Improve performance of cursor open when there are many tables in a database.
  [#1391] [#1443]

* Reduce the impact checkpoints have on concurrent operations. This was
  done by changing how we lock tables. [#1391] [#1392]

* Improve performance when scanning a table that has many deleted items.
  [SERVER-16247](https://jira.mongodb.org/browse/SERVER-16247)

* Fix a bug in checkpoint, where the metadata (turtle) file wasn't being
  synced on checkpoint. [#1383]

* Fix a bug where WiredTiger could accumulate memory during page splits and
  never free it.  [SERVER-16546](https://jira.mongodb.org/browse/SERVER-16546)

* Many enhancements and bug fixes for Windows.

* Fix a bug where a custom extractor terminate was being called twice.
  [#1503]

* Fix a bug where a race between closing a handle and checkpointing could
  lead to errors. [#1495] [#1497]

* Validate the block header checksum before we clear it - if the checksum
  field had been corrupted, we didn't notice.  [SERVER-16457](https://jira.mongodb.org/browse/SERVER-16457)

* Fix a bug in write conflict detection.  Cursors configured with
  no-overwrite could sometimes not see update conflicts for deleted
  records.  [SERVER-16351](https://jira.mongodb.org/browse/SERVER-16351)

* Several bug fixes and performance improvements in LSM including:
 - Add support for custom collators in LSM trees. [#1361]
 - Fix a bug in LSM search_near, where it returned a deleted item.
   BF-694, BF-700
 - Improve background maintenance operations so that the cache does
   not get full unnecessarily.
 - Fix a bug that could lead to updates being written into old chunks.
   [#1432] [#1418]
 - Fix a bug in background merge that could skip updates.  [SERVER-16123](https://jira.mongodb.org/browse/SERVER-16123)

* Fix a bug when maintaining the cache, that could cause checkpoints to
  skip writing an update that should have been included. [#1419] [SERVER-16336](https://jira.mongodb.org/browse/SERVER-16336)

* Fix a bug in WT_SESSION::drop, where failures generated error output even
  when force was specified. [#1436]

* Fix a bug in WiredTiger integer packing code when figuring out how much
  space is required for a value (it can shrink as numbers grow). [SERVER-16118](https://jira.mongodb.org/browse/SERVER-16118)

* Several enhancements to the wtstats.py tool that generates graphs from
  standard WiredTiger statistics logs. [#1365]

* Fix a bug on OS X where fsync isn't sufficient to flush a file, use
  fcntl(F_FULLFSYNC) instead.

* Work around a bug in clang 3.5.0 compare and swap primitive. The
  __sync_bool_compare_and_swap version of the API in clang produces bad
  code for us with -O3 optimization enabled.


WiredTiger release 2.4.1, 2014-11-06
------------------------------------

The WiredTiger 2.4.1 release contains several new features, many bug fixes
and performance enhancements.

New features and API changes:

* Add new custom extractor functionality to WiredTiger indexes. Allowing an
  application to define mutated and/or multiple keys for indexes. [#1199]

* Add a new WT_SESSION::transaction_pinned_range method that allows users
  to identify when a session is keeping a transaction ID pinned for a long
  time. [#1314]

* Enhance statistics output so that keys are more clearly categorized. [#1313]

* Rename WT_DEADLOCK error return to WT_ROLLBACK. WiredTiger uses the return
  in cases other than traditional application deadlock. The old value is
  retained as an alias to maintain backward compatibility. [#1204]

* Increase the maximum configurable cache size to 100GB.

Other significant changes:

* Improve support for building on Windows platforms. [#1342]

* Fix a bug where WiredTiger could race closing handles. [#1336]

* Enhance performance when hot pages in cache are growing rapidly. [#1317]

* Fix a bug in recovery, where log files that are zero extended could
  result in some log records being skipped. [#1334]

* Updates to the Java API to improve documentation and exception handling.
  [#1295]

* Improve support for building on Oracle Solaris platform [#1329]

* Fix a bug where closing a handle could leave the tree in an inconsistent
  state on failure. [#1316]

* Several bug fixes and improvements to LSM including:
  - Improving algorithm for switching the in-memory chunk.
  - Fixing a bug related to dropping obsolete chunks. [#1304]

* Fix a bug in schema level operations (table create, drop, etc). If there
  was an explicit transaction running when the operation was performed that
  was subsequently rolled back the object could be left in an inconsistent
  state.

* Several enhancements to cache management when there are long running
  transactions present.


WiredTiger release 2.4.0, 2014-10-15
------------------------------------

The WiredTiger 2.4.0 release contains significant new features, API changes
and many bug fixes.

New features and API changes:

* Cursors keep their position across transaction boundaries. That is
  WT_SESSION::begin_transaction and WT_SESSION::commit_transaction no longer
  reset cursors. [#1181]

* Change cursor behavior so that when an operation returns WT_NOTFOUND, the
  cursor is now left pointing to the original key/value pair. [#1209]

* Initial support for building WiredTiger on Windows.

* Add ability to customize a collator for specific data sources or with
  application managed metadata. See upgrading documentation for more
  information. [#1165]

* Enhance extension mechanism in WiredTiger to support loading extensions from
  the application binary - not just a separate library. [#1174]

* Replace WT_SESSION::create "lsm=(merge_threads)" configuration option with
  ::wiredtiger_open "lsm_manager=(worker_thread_max)". See upgrading documentation
  for more information.

* Enhancements to the WiredTiger Python API build process. [#1188]

* Add ability to dump and load WiredTiger databases in JSON format. [#1154]

* Add ability to automatically checkpoint based on the volume of log records
  generated since the last checkpoint.  This is enabled using the
  ::wiredtiger_open configuration option "checkpoint=(log_size=size)" [#1170]

* Enhance functionality allowing users to write content into the WiredTiger
  transaction log. [#1171][#1175]

* Enhance the WiredTiger HyperLevelDB implementation to support log replay.
  [#1106][#1155]

Other significant changes:

* Fix several bugs in the shared cache implementation. [#1180][#1176]

* Fix a bug where the public URI field in a cursor did not match the string
  passed to WT_SESSION::open_cursor. [#1235]

* Fix several bugs in salvage. [#1222][#1169]

* Several bug fixes and enhancements for WT_CONNECTION::reconfigure.
  [#1214][#1172]

* Fix several bugs in raw compression implementation, particularly for data
  that compresses extremely well. [#1191]

* Several bug fixes and enhancements to WiredTiger LevelDB interface.

* Switch default build from using adaptive pthread mutexes to default pthread
  mutexes.


WiredTiger release 2.3.1, 2014-08-14
------------------------------------

The WiredTiger 2.3.1 release contains mainly performance enhancements and bug
fixes.

Changes to the WiredTiger API:

* Fix a bug in WT_CURSOR::set_value that could lead to undefined behavior with
  some value formats.

* Make the asynchronous API generally available [#1139]

* Add log cursors for replay and verification.  Make generated log record and
  operation types public.  [#1106]

* Allow eviction worker threads to be started and stopped dynamically.
  Applications that use the `eviction_workers` configuration should see the
  upgrading documentation on how to use this feature.
  [#1116, #1143, #1158]

Other significant changes:

* Improve performance and reduce latency during checkpoints and LSM merges.
  Remove uses of the checkpoint lock other than serializing checkpoints:
  compact holds the schema lock, so it doesn't need to hold the checkpoint
  lock, the new WT_BTREE handle close lock prevents checkpoints from colliding
  with handle close, so LSM doesn't need the checkpoint lock either.

* Some minor cleanups, setting the internal session's name in a few places.
  [#1073]

* Grab the live lock when loading a checkpoint in diagnostic mode: that could
  race with a read.  [#1102]

* Instead of keeping a list of file URIs for checkpoint to flush, open a handle
  and stash it.  [#1114]

* Add a new OS-layer function __wt_fsync_async to flush a file without waiting
  for the results, call it from the Btree flush-leaves code so pages start
  flushing while we're working the rest of the checkpoint.  [#1136, #1152]

* Wait for the handle flush lock when writing the leaf pages instead of
  returning EBUSY.  [#1136]

* Add a wtperf page to the documentation, describe how to simulate workloads
  and view statistics.  [#1147]

* Flag new structures not listed in PREDEFINE.  [#1148]

* Return EBUSY if no async handles available and fix ex_async to look for it.
  [#1153]

* Fix some problems with navigation in the reference guide.

* Bump the number of slots for internal sessions: we have a lot more than 2
  now.  Add a test for `session_max` settings, make sure we add enough to
  account for at least the default internal sessions.

* Remove tcbench: we're no longer maintaining it.


WiredTiger release 2.3.0, 2014-07-29
------------------------------------

The WiredTiger 2.3.0 release contains significant new features, performance
enhancements and bug fixes.  Significant changes are described below.

Changes to the WiredTiger API (see upgrading documentation for details):

* Add a LevelDB API implementation for WiredTiger.  This includes support for
  stock LevelDB as well as Basho, HyperLevelDB and RocksDB versions of the API.
  To build the LevelDB API include --enable-leveldb in the configure command,
  to specify compatibility with an alternative LevelDB API use
  --enable-leveldb=[basho,hyper,rocksdb]. [#1028]

* Add ability to build some common extensions into the WiredTiger library.
  This means that the libraries for those extensions don't need to be
  dynamically loaded at runtime. Currently supported extensions are Snappy
  compression and zlib compression. The option can be enabled by passing
  --with-builtins=[snappy,zlib] to the configure command line.

* Add a new configuration to wiredtiger_open: statistics_log=(on_close=true),
  that causes a set of statistics to be logged on WT_CONNECTION::close. [#1086]

* Add a new configuration to wiredtiger_open: exclusive, that causes the open
  to fail if the database already exists.

Other significant changes:

* Performance improvement for high throughput workloads using multiple
  eviction threads. Performance of some workloads improves by over 15% [#1087]

* Significant performance optimizations for queries, giving up to 20%
  throughput improvement for in-memory query workloads.
  https://github.com/wiredtiger/wiredtiger/wiki/Query-throughput

* Fix an off-by-one bug that could lead to ENOMEM during commit with logging.
  [#1104][#1121]

* Allow bulk loads to multiple files to complete in parallel. [#1114][#1126]


WiredTiger release 2.2.1, 2014-06-24
------------------------------------

The WiredTiger 2.2.1 release contains mainly performance enhancements and bug
fixes.  Significant changes are described below.

Changes to the WiredTiger API (see upgrading documentation for details):

* Change the order in which configuration setting mechanisms are applied by
  wiredtiger_open. [#1010][#1034]

* Split the global transaction_sync configuration into two parts: a sync method
  (dsync, fsync or none), and an enabled flag (false by default). [#1074]

* Add ability to sync with per transaction granularity. [#1074]

* Update WiredTiger Java API to throw WiredTigerException consistently. [#1011]

* Add ability to dump and load databases using JSON format. [#740][#1049]

Other significant changes:

* Various performance improvements to the main cursor search routine including
  reductions in how often we need to copy data and profiling based optimizations
  for tight search loops. [#1050][#1070]

* Fix a bug in recovery with missing files (e.g., after a hotbackup that raced
  with file creation). [#1042][#1045]

* Several bug fixes and performance enhancements related to LSM trees and
  snapshot isolation transactions. [#1057][#1060][#1075]

* Several performance tuning enhancements to LSM trees around locking,
  throttling and switching chunks. [#1051]

* Algorithmic improvements to LSM tree compact operation. It is now faster
  and more reliable. [#1063]

* Create a separate thread to manage open file handles - which means that:
 - Application threads are less likely to be responsible for closing handles
 - Multi threaded workloads don't open/close handles more often than necessary
  [#1018]


WiredTiger release 2.2.0, 2014-05-21
------------------------------------

The WiredTiger 2.2.0 release contains new features, performance enhancements
and bug fixes. Significant changes include:

Changes relevant for upgrading applications:

Update the table create API to disable prefix compression by default.
Applications generally see better performance without prefix compression,
choosing space saving over performance is up to the application. [#981]

Change the default leaf_page_max setting from 1MB to 32KB. Choosing a large
default leaf_page_max led to poor performance in out of cache workloads.

Remove the `--enable-debug` option to configure. It is more standard to set
`CFLAGS="-g"` variable instead.

Save the wiredtiger_open configuration when a database is created, so that
settings like cache size, extensions and logging are set consistently by all
subsequent users of the database.

Add an `--enable-verbose` option to configure. In order to access the verbose
message functionality available as part of the wiredtiger_open and
WT_CONNECTION::reconfigure APIs, it is necessary to pass the `--enable-verbose`
option to configure.

Enhance the metadata cursor implementation (i.e: cursors created with a
"metadata:" prefix) so that they can be used to inspect metadata for internal
tables and now support altering the metadata. Add a new "read_only" flag to
cursor configuration that defaults to false for metadata cursors.

Fix several bugs in raw compression, including one that could cause data
corruption and some that triggered poor performance.
[#984][#991][#1007][#1008][#1013]

Improve the performance of recovery - we no longer need to scan all log files
looking for the last checkpoint.

Improve performance of read-only transactions, by deferring the allocation
of transaction IDs. [#978]

Several bug fixes in hot backup related to log
files, including:
 * Always choose the right metadata version in the backup [#972]
 * Don't require that hot backup copies log files in order [#976]
 * Always copy log files before data files [#976]
 * Fix a bug where recovery returned an error if the last log record was
   incomplete [#994]

Speed up checkpoints by doing a better job of skipping pages that can't
contain changes that need to be included. [#954][#963][#1001]

Add ability to store zero length data items into LSM trees. [#540]

Add an asynchronous data access/manipulation API to WiredTiger. [#933]

Add the ability to configure multiple eviction server threads, to help with
keeping space available in the cache. [#918]

Add the ability to reconfigure the checkpoint and statistics log servers.
[#997][#1004]

Improve the performance of retrieving data for in cache workloads. [#970]

Improve the structure of the in-memory tree we are generating, by allowing
internal pages to be split. This significantly improves query performance
in some workloads. [#876]

Work around a bug in posix_fallocate on Linux, where it could corrupt already
written data.

Add the ability to leak memory on connection close via new leak_memory option
to WT_CONNECTION::close API. This allows for faster shutdown if a process is
going to exit when the WiredTiger connection is closing.

Allow salvage to run on any table type.

WiredTiger release 2.1.2, 2014-03-27
------------------------------------

The WiredTiger 2.1.2 release contains performance enhancements and bug fixes.
Significant changes include:

Update the configuration settings for shared_cache to make the distinction
between cache_size and shared_cache less confusing. See upgrading
documentation for more information.

Various performance enhancements to improve the performance of checkpoints.

Fix a bug that could cause a hang with small caches under heavy load. [#894]

WiredTiger release 2.1.1, 2014-03-04
------------------------------------

The WiredTiger 2.1.1 release contains new features, performance enhancements
and bug fixes.  Significant changes include:

Fix a bug where a page could be marked clean when it contained uncommitted
changes.  This bug could cause undefined behavior in transaction rollback
under load.

Fix a bug with shared caches when rebalancing between connections.

Add a new public API to WiredTiger that provides the ability to parse
WiredTiger compatible configuration strings. See the upgrading documentation
for further information. [#873]

A number of performance enhancements to the LSM implementation, particularly
for long running workloads.

A number of performance enhancements and bug fixes to cache eviction code.

Add an option to use direct I/O when reading from checkpoints. To enabled
the functionality add "direct_io=[checkpoint]" to your wiredtiger_open
configuration string. [#847]


WiredTiger release 2.1.0, 2014-02-04
------------------------------------

The WiredTiger 2.1.0 release contains new features, performance enhancements
and bug fixes.  Significant changes include:

The WT_ITEM structure was changed so that the size field is a size_t rather
than a uint32_t.  See upgrading documentation for details.

A change to the compress_raw interface around repeating the call with more
records.  See upgrading documentation for details.

In LSM trees, the memory_page_max setting is ignored.  The effective setting
is double the chunk size. [#861][#859]

Add support for zlib compression. [#855] [#865]

Various enhancements to how WiredTiger generates tree structures in memory to
help maintain consistent performance as table size grows. [#851]

Add support for Levyx Inc Helium as an external data source in WiredTiger
[#849][#850]

Improve insert performance when a table contains many identical overflow
items.

Various performance enhancements to btree searches. [#838][#839][#840]

Add support for newer versions of autoconf up to 1.14. [#599][#841]

Improve multi-threaded throughput of durable log writes, including changing
the default wiredtiger_open transaction_sync configuration from dsync to
fsync, see the upgrading documentation for further information. [#831][#832]

In the Python and Java APIs, automatically close handles to prevent invalid
accesses by applications. [#649][#800][#830]

Various enhancements to the LSM merge algorithm, including improvements to how
files are selected for merging, and throttling based on whether merges are
keeping up (to limit write amplification).  Made the minimum number of chunks
chosen to merge configurable. [#817][#819][#822]


WiredTiger release 2.0.1, 2013-12-12
------------------------------------

The WiredTiger 2.0.1 release contains major new features, numerous performance
enhancements and bug fixes.

Significant changes include:

* WiredTiger now supports fine-grained durability via Write Ahead Logging (WAL).
  Logging is enabled with the "log=(enabled)" configuration string to
  wiredtiger_open. If the connection is not shut down cleanly and logging is
  enabled, WiredTiger will automatically run recovery the next time it is
  opened, rolling forward changes in the log until the last commit.
  [#605]

* Many enhancements to the LSM implementation to improve the throughput and
  reduce maximum operation latency including:
  - Algorithmic improvements when multiple merge threads are configured.
  - Improvements to bloom filter lookup speed.
  - Enhancements to internal cursor management, to reduce search overhead.
  - Prioritize switching to a new level 0 chunk in utility threads, to avoid
    application thread pauses.
  - More advanced logic in choosing when to create bloom filters.

* LSM specific WT_SESSION::create configuration option enhancements. Including:
  - Move existing options into their own group, and strip leading lsm_ prefix.
  - Add a new merge_max configuration option.
  - Update the default chunk_size to be 10MB.
  - Increase the default bloom filter bit and hash counts.
  - Clean up files left after interrupted merges.
  See the upgrading documentation for details.
  [#784, #785, #786, #802]

* WT_SESSION::compact can now be used to merge LSM trees into a small number
  of chunks on disk.
  [#792]

* Enhanced the Java API, so that when WiredTiger automatically closes a
  handle, the handle is automatically invalidated for the Java application.
  [#485]

* Add a script that can create an interactive web page to view statistics
  from a WiredTiger statistics log. Based on D3: http://d3js.org/

* Enhancements to the wtperf performance testing tool to add new features


WiredTiger release 1.6.6, 2013-11-19
------------------------------------

The WiredTiger 1.6.6 release is a bugfix and performance tuning release.

This release of WiredTiger contains a database format change. Database files
from previous releases will need to be upgraded.

A special note: the WiredTiger code base is now being regularly reviewed
using the Coverity Static Analysis Verification Engine.  We'd like to
thank Coverity for their on-going support of Open Source projects like
WiredTiger!

Significant changes include:

* Performance changes include: limiting operations done inside update
  serialization primitives, removing unnecessary memory barriers, replacing
  spinlocks with atomic instructions, padding structures to avoid false
  cache sharing, switching from per-file mutexes to per-page mutexes,
  pre-allocating structures to avoid memory allocation while holding
  mutexes, and using adaptive mutexes where available.
  [#707, #718, #719]

* A number of LSM stability and performance improvements: changes include
  better merge algorithms, reduced locking, and higher concurrency.

* A number of table compaction performance improvements, including changes
  allowing compaction to no longer read unnecessary file blocks into the
  cache, requires fewer passes over the file and support concurrent
  checkpoints and eviction.  This change required an underlying file
  format change, see the upgrading documentation for details.
  [#756, #761]

* WiredTiger statistics have been significantly improved:

  Statistics logging has been changed to aggregate information from all
  open handles.  [#709, #717]

  For performance reasons, statistics are now disabled by default, see
  the upgrading documentation for details.  [#715]

  Statistics configuration has been changed so the connection and cursor
  configuration are consistent, with matching changes to the "wt stat"
  command-line utility; see the upgrading documentation for details.

* Update WT_EVENT_HANDLER interface to contain a new "handle close"
  interface and to pass a WT_SESSION handle into all callbacks, see the
  upgrading documentation for details. [#649]

  Add timestamp, process ID and thread ID to messages generated via
  WT_EVENT_HANDLER interface. [#753]

* WiredTiger eviction improvements, supporting larger data-to-cache size
  ratios. [#754]

* Various fixes for handling overflow records. [#726, #743]

* Overflow records are no longer tracked during bulk-loads, significantly
  increasing bulk-load performance for some data sets.


WiredTiger release 1.6.5, 2013-10-09
------------------------------------

This is primarily a bugfix and performance tuning release. The main changes are:

* Change the default statistics_fast configuration from false to true.

* Change WT_CURSOR::insert to not hold a position. [#673]

* Disallow WT_SESSION::compact operations on LSM trees.

* The 'sync' setting to wiredtiger_open has been renamed 'checkpoint_sync'.

* Add a "metadata:" cursor type. [#660]

* Fix race in the cache's dirty byte tracking. [#635, #699]

* Fix a bug scanning through a memory-mapped file with overflow items. [#701]

* Use hardware checksum instructions when available. [#582, #702]

* Several bug fixes related to tracking active transaction IDs and detection of
  obsolete updates with high concurrency workloads. [#639, #643, #657, #683]

* Fix several bugs in LSM including races on shutdown and Bloom filter
  creation. [#686, #687, #688].

* Fix a bug in LSM where we were not including Bloom filter files in backups.
  [#684]

* Optimize the LSM throttle and merge algorithms. [#676]

* Make hot backups work concurrently with files being bulk-loaded. [#570, #653]

* Add full support for snapshot isolation to LSM: only switch LSM chunks if all
  changes are globally visible and detect conflicts between transactions across
  file switches. [#629]


WiredTiger release 1.6.4, 2013-08-20
------------------------------------

This is primarily a bugfix and performance tuning release. The main changes are:

* Make prefix compression of keys conditional on the amount of space saved.
  A database format change was required for this enhancement. See upgrading
  documentation for details. [#624]

* The default behavior of the wt utility's load command has been changed to
  overwrite existing data.

* Add a WT_SESSION::create prefix_compression_min configuration option with a
  default value of 4. [#624] and [#624]

* Fix "make install" of Python API. [#598]

* Require platform support for atomic read/write of 64 bit values. [#553]

* Support transaction semantics for custom data source implementations. Enhance
  Memrata data source to support transactions.

* Changes to the wtperf testing tool related to how configuration options are
  specified.

* Enhance cursor key/value memory management to be more efficient, consistent,
  and have stricter checking of inputs and outputs.

* Increase the likelihood of being able to evict hot pages. [#604]

* Reference on-page keys instead of copying them to allocated memory. This
  saves space in the cache and overhead when reading pages into cache.
  [#592] and [#600]

* Add a btree search optimization that skips matching prefixes. [#595]

* Turn off Huffman encoding for keys on row-store internal pages. [#592]

* Add concurrent logging infrastructure that will be used to support write
  ahead logging in a future release.


WiredTiger release 1.6.3, 2013-07-12
------------------------------------

This is a bugfix and performance tuning release. The main changes are:

* Change the default cursor overwrite configuration so that it is consistent
  across all data sources. This change may alter the behavior of existing
  applications without triggering any compilation or runtime warnings. See
  the upgrade documentation for details. [#512]

* Require platform support for 64 bit atomic operations. [#553]


WiredTiger release 1.6.2, 2013-06-18
------------------------------------

This is a bugfix and performance tuning release. The main changes are:

* Fix a race in the WiredTiger pseudo random number generator that was leading
  to poor distribution of numbers.

* Change the default compression configuration to "uncompressed".

* Fix a race between checkpoints and LSM that could result in a crash. [#543]

* Add an option to output version information at runtime. Configure by
  including "verbose=[version]" in the wiredtiger_open connection
  configuration string. [#564]

* Add a configurable prefix to error messages. [#527]

* Add two new extension APIs, one to return a transaction ID, one to return
  if a transaction ID is visible to the current transaction.

* Add standard metadata functions to the extension API and make extension data
  sources responsible for their own metadata entries.

* Add a new extension function __wt_ext_config_strget that returns the
  configuration value from a single string.


WiredTiger release 1.6.1, 2013-05-31
------------------------------------

This is a bugfix and performance tuning release. The main changes are:

* Fix the compress_raw API so that it uses platform independent types. See the
  upgrade guide for further information. [#561]

* Add an explicit enable setting to shared_cache configuration. See the
  upgrade guide for further information.

* Fix several bugs in hot backup, including race conditions between backup and
  table drop (and other schema level operations). [#556] [#557]

* Allow any data source type for indices as well as column groups. [#545]

* Preload btree internal pages into file system cache when opening a table.

* Change the default allocation size to 4KB so that DIRECT_IO with 4KB blocks
  works. [#547]

* Fix some bugs related to tracking the oldest active transaction. [#552]

* Fix a bug in the extension API when using multiple databases.

* Disallow named checkpoints on LSM trees - they aren't supported. [#546]

* Fix support for custom collators with LSM trees. [#544]

* Build fixes for gcc 4.1.2.

See the upgrade documentation for details of API changes that may require
altering existing applications.


WiredTiger release 1.6.0, 2013-05-16
------------------------------------

This release contains new features, bug fixes and performance improvements.
The significant changes are highlighted below:

* Fix a bug where configuring direct I/O could cause checksum errors at
  runtime.  NOTE: database file format change.  [#526]

* Fix a race that allowed checkpoints to be deleted while hot backups are
  running.  [#515]

* Scale to events per second in graphs generated from statistics log output.
  [#518]

* Changes to reduce the latency of LSM operations.

* Add a new terminate callback to extension interfaces that is called when the
  WiredTiger connection is closed.  [#530]

* Various optimizations and bug fixes to cache management and eviction code.

* Update various statistics.

* Fix a bug where using a combination of read-committed and snapshot
  transactions could result in inconsistent values being returned.  [#539]

* Fix a bug where using LSM trees with compression enabled could result in an
  invalid system call. [#535]

* Enhance statistics logging so that it can dump "lsm:" statistics.

See the upgrade documentation for information about database format changes
in this release.


WiredTiger release 1.5.3, 2013-04-26
------------------------------------

This release contains some major new features along with numerous bug fixes
and performance improvements. The significant changes are highlighted
below:

* Enhance the extension data source API to facilitate implementation of new
  data stores in WiredTiger.

* Add support for the STEC / Memrata KVS data source.

* Add a Berkeley DB data source via the WiredTiger extension API.

* Various enhancements to cache eviction management. Mostly to avoid stalls in
  application threads.

* Fixes to shared cache pool implementation, so resources are more
  aggressively reallocated.

* Add new statistics.

* Implement automatic insert throttling in LSM - enabled by default.

* Configuration strings are now case sensitive.

* Enhance LSM merge algorithms to be more efficient as trees grow very large.

See the upgrade documentation for details of API changes that may require
altering existing applications.


WiredTiger release 1.5.2, 2013-03-28
------------------------------------

This is a bugfix release. The main changes are:

[#493] Fix get_key/value in the Java API for complex cursors.

* Fix a leak in eviction detected by valgrind.

* Stop trying to cache the oldest reader: we only use it for eviction and only update it when required.

* Track cursor creation in the statistics (creating a cursor per operation isn't a good idea).


WiredTiger release 1.5.1, 2013-03-25
------------------------------------

This is a bugfix and performance tuning release. The main changes are:

* Fix several bugs in LSM:
 - the logic for setting the "no eviction" flag on LSM chunks was reversed,
   causing unnecessary eviction once the cache became full;
 - calling session.checkpoint while writing to an LSM tree could confuse
   the logic around switching to new chunks; and
 - fix a possible NULL pointer indirection when switching chunks.

* Make WT_ASSERT a no-op when not in DIAGNOSTIC mode.

* Panic if we find a block on the wrong list, that's not something we can
  recover from.

* If a page is reconciled (causing it's on-disk blocks to be freed and
  potentially recycled), and then a subsequent collapse of a stack of
  split-merge pages replaces that page with a page that has not yet been
  reconciled, we can potentially free the same blocks twice.  The fix is to
  clear the page's WT_REF.addr field at the time we free the blocks, so
  future reconciliations will ignore the original disk blocks.

* Fix a bug in the dump utility that allowed index URIs.

* Tweak merge to build better trees with random insert workloads.

* Don't use a stale value for the oldest reader transaction ID.

* Track the size of the WT_REF array in internal pages (including
  WT_ADDRs).  Also add an estimate of per-allocation overhead.

* Fix a bug where URIs containing absolute paths were not being parsed
  correctly.

* Add a RMW insert mode to wtbench.

[#427] Improve cleanup after a failed wiredtiger_open call.

[#484] Don't allow true/false values in config strings where integers are
       expected.

[#486] Move the cache full check for autocommit transactions out of the
       rollback path (since we don't reset cursors there), to after we
       close a cursor.

[#488] Fix an assertion failure if we try to do eviction without ever having done an update.


WiredTiger release 1.5.0, 2013-03-14
------------------------------------

This release contains some major new features along with numerous bug fixes
and performance improvements. The significant changes are highlighted
below:

* Add a Java API.

* Create a thread to do automatic checkpoints, configured by passing
  "checkpoint=(wait=X)" to wiredtiger_open.

* Add support for periodically logging statistics to a file and a tool to
  generate graphs based on those logs.  Configured by passing
  "statistics_log=(wait=X)" to wiredtiger_open.

* Several changes to minimize the impact of checkpoints on other threads.

* When reading from checkpoints, use mmap by default.

* Enhance eviction so that internal pages take up less space.

* Add maximum filesystem buffer cache settings to wiredtiger_open called
  "os_cache_max" and "os_cache_dirty_max".  After doing the specified
  amount of reads or writes, WiredTiger will call fadvise and/or
  sync_file_range to drop pages from the filesystem cache.  This is an
  alternative to direct I/O with less impact on performance.

* Make run-time statistics optional, defaulted to "off".

* Change how we detect if shared cache is used. It used to rely on a name,
  now it will be used if the shared_cache configuration option is included.

* Add the ability to specify a per-connection reserved size for cache
  pools.  Ensure cache pool reconfiguration is honored quickly.

* Rework hazard pointer coupling during cursor walks to be more efficient.

* Add a cache_eviction_walk statistic to track the pages we walk and a
  cache_eviction_force statistic to track the count of pages queued for
  forced eviction.

* Fixes to reduce the number of operations on shared data that were causing
  bottlenecks in read only workloads.

* Add streaming pack / unpack to the API.

* Add some basic reconciliation stats to the connection stats.

* In LSM, keep trying to switch if there is an error: it may be transient.

* Minor clean up and enhancement for the reconciliation statistics, add a
  set of compression statistics, both to the data-source statistics.

* Compaction cannot run at the same time as a checkpoint: the problem is
  that checkpoints review page reconciliation information and checkpoints
  update page reconciliation information.   Lock out checkpoints while
  compaction is running.


WiredTiger release 1.4.2, 2013-01-14
------------------------------------

[#387] Fast-path "S" and "u" formats in cursor.get_key and cursor.get_value.

[#407] Allow non-conflicting updates to complete concurrently.

[#418] Add code in to prioritize eviction of pages that are larger than a
certain threshold. This avoids taking a performance hit when a huge page
needs to be reconciled.  Add a new memory_max_page configuration option.

[#419] If a page splits, it potentially creates a merge-split internal page
and we potentially walk that page during fast-delete.  The WT_REF.addr field
doesn't point to a cell in that case and we'll drop core.

[#424] Add clarification wording for boolean configuration strings.

[#425] Perform checkpoints in the calling thread, don't block eviction: when
evicting in a file that is being checkpointed, only evict clean pages.  Also
Do compaction in the calling thread instead of interrupting the eviction
thread to do the work.

[#426] Fixes for automake 1.3.x.  Allow examples to run in parallel: give
each a unique home directory.

Make the tree build without HAVE_VERBOSE.

Fix some issues with LSM rename and add a Python test.

Track when cursors refer to memory returned by WiredTiger, copy it if
required before dropping hazard pointers that might be protecting it.

Verify shouldn't ever modify the file -- don't bother checking for dirty
pages, just discard everything.

When rolling forward to resolve key prefix compression, don't copy the key,
we only need a reference to it, should speed up tables with lots of key
prefix compression.

Requested changes for the WT_COMPRESSOR::compress_raw method API: pass in the
configured object's page size as a convenience, and if
WT_COMPRESSOR::pre_size is set, use it to determine the size of the
destination buffer, rather than using the object's page size as the maximum
needed.


WiredTiger release 1.4.1, 2012-12-12
------------------------------------

This is a bugfix, cleanup and performance tuning release. The significant
changes are highlighted below:

[215] Add a __wt_panic function that shuts down all of the WiredTiger APIs.
      Also add a new error return WT_PANIC which means there has been an error
      in the WiredTiger engine, and it should be restarted.

[409] Fix a bug populating column groups with complex schema. Also allow empty
      column lists in projection cursors.

[150] Add description of how to do index-only searches to the documentation.

[392] Move examples/c/ex_test_perf.c to bench/wtperf.

[322] Add support for statistics on schema-level objects i.e tables,
      column groups, indices.

* Enhance statistics, including changing the name of some statistics.

* Fix a bug in the eviction server that could cause it to abort, leaving the
  system unusable.


WiredTiger release 1.4.0, 2012-12-03
------------------------------------

This release adds several major new features, a number of performance
improvements and bug fixes. The significant changes are outlined below:

New features and API changes:

[242] Track the percentage of cache that is dirty, trigger eviction to bound
      it. This can be used to bound how much data checkpoints write.

[324] Add support for WT_COMPRESS::compress_raw, which lets the compression
      routine select how many rows are included in each disk block.

[381] Add statistics to track read and write amplification (application data
      size versus I/O size)

* Add a trigger configuration option to WT_SESSION::compact API.

* Make WT_SESSION::create's checksum configuration 3-state: on, off, or
  uncompressed blocks only.

Bug fixes:

* Fix build issues on Solaris.

* Fix a bug calculating the generation of an LSM merge.

* Fix WiredTiger dump and load for tables.

* Fix a memory leak in checkpoints.

* Improve accuracy of cache memory tracking with overflow items.


WiredTiger release 1.3.8, 2012-11-22
------------------------------------

This release improves the performance of LSM trees, changes how statistics are
reported and adds a shared cache implementation:

New features and API changes:

[232] Add a "size of checkpoint" statistic.

* Add a shared cache pool implementation.  Manages a single cache among
  multiple databases within a process.

* Merge statistics from file and LSM sources into a "data source" statistic
  structure.  Rename and regroup some shared statistics.  Add a helper to
  the Python API to lookup in a cursor in a simple expression.

* Add support for sub groups of options in configuration strings.

Performance tuning for LSM trees:

* Don't try to merge with a chunk that is much larger than a small chunk.

* After an LSM merge, fault in some pages before the new tree goes live to
  avoid stalling application threads.

* Don't automatically fail inserts if the write generation check fails:
  compare keys instead.

* Switch the LSM tree lock to a read/write lock, so cursors can read the
  state of the tree in parallel.

Bug fixes:

* Fix a bug where we could write past the end of a buffer after it was grown.


WiredTiger release 1.3.7, 2012-11-09
------------------------------------

This release fixes a bug and improves performance with Bloom filters:

* Drop any old Bloom filter before creating a new one -- we may have been
  interrupted in between creating it and updating the metadata.  Write the
  metadata after creating missing Bloom filters.

* Use a separate thread for creation of Bloom filters for the newest,
  unmerged LSM chunks.

* Changes to the ex_test_perf example: change the default configuration to
  4KB pages and disable prefix compression.  Change the "-i" command line
  option to be a simple count of records to insert.  Clean up error
  handling and add option to populate using multiple threads.

* Clarify the docs for the default buffer_alignment setting.


WiredTiger release 1.3.6, 2012-11-06
------------------------------------

This is a bugfix and performance tuning release. The changes are as follows:

* Rename the WiredTiger installed modules to libwiredtiger_XXX.  Don't install
  the nop and reverse collator modules.

* Replace test/format's bzip configuration string with compression, which can
  take one of four arguments (none, bzip, ext, snappy), change format to run
  snappy compression if the library is available.

* Rename the builtin block compressor names from "bzip2_compress" to "bzip2",
  and from "snappy_compress" to "snappy".

* Support multiple LSM merge threads with the "lsm_merge_threads" config key.
  Use IDs rather than array index to mark the start chunk in a merge, in case
  we race with another thread.

* Cache the hash values used for Bloom filter lookups, rather than hashing for
  each Bloom filter in an LSM tree.

* Only switch trees in an LSM cursor if the primary chunk is on disk.

* Add a per-btree cache priority, currently only used to make it more likely
  for Bloom filter pages to stay in cache.

* Only evict pages with read generations in the bottom quarter of the range we
  see.  Fix a 32-bit wrapping bug in assigning read generations.

* For update-only LSM cursors, only open a cursor in the primary chunk.

* LSM: Report errors from the checkpoint thread.

* LSM: only save a Bloom URI in the metadata after it is successfully created.

* LSM: Create missing Bloom filters when reading from an LSM tree if
  "lsm_bloom_newest"is set.

* LSM: Include all of the chosen chunks in a merge.  Only pin the current chunk
  in an LSM cursor if it is writeable.


WiredTiger release 1.3.5, 2012-10-26
------------------------------------

This is a bugfix and performance tuning release. The changes are as follows:

[#370] Document that applications are responsible for figuring out their
       upgrade path if they might swap out compression engines.

[#371] When a single session was used to reconcile multiple btrees, one of
       which had dictionaries configured and one of which didn't, we failed to
       clear the dictionary when starting page reconciliation.   Be consistent,
       never use anything other than the btree handle's configuration to decide
       if we're using a dictionary in a reconciliation run.

[#372] Fix several potential integer overflow bugs.

[#373] Fix a bug where calls that performed an operation on multiple objects
       (such as creating a table that implicitly creates a column group)
       could leave the metadata incomplete if a process exited without
       calling `WT_CONNECTION::close`.
       Hold the schema lock while opening tables. Fixes the error "cannot be
       opened until all column groups are created" message when create calls
       race with open_cursor.

[#374] Fix a race that caused crashes when using the Python API with
       multi-threaded code.

[#375] Fix a bug in __wt_cond_wait - so that it returns after timeout expires.

* Protect the list of LSM trees with the schema lock to avoid races during
  create.

* Update ex_test_perf to output statistics during populate and improve timing
  accuracy.

* Skew eviction in favor of leaf pages - which improves read-only performance
  for large LSM trees.

* Hold the LSM tree lock while gathering statistics.

* Fix a bug in bulk load of bitmap files.

* Fix a related bug in the bloom code that uses bitmap stores.

* Don't attempt to drop the first chunk of an LSM tree before creating it.

* Instead of entering a fake key cell after the last cell on the page just
  in case the page ends with a key cell which has no value, use the end of
  the page to detect that case.

* Cache cursor key/value formats in Python, to save a native call from every
  get_key/value.

* Don't sync the directory after open if the global "sync" flag is false.

* Fix a race for LSM trees that could happen if two threads race to open a
  cursor and drop the LSM tree.

WiredTiger release 1.3.4, 2012-10-19
------------------------------------

This release includes several important new features, including:

* support for online compaction of files;
* support for tables, column groups and indices that use LSM trees for
  storage; and
* improved statistics and configuration for LSM trees and Bloom filters.

In addition, there are some significant performance improvements and bug
fixes.  The full list of changes is:

[#248]	Add support for online compaction.

[#310]	Fixed a bug where overflow blocks could be accessed by a
	long-running reader after they had been freed in a checkpoint.

[#358]	Allocate checkpoint blocks from the live system's list of available
	blocks rather than always extending the file.

[#361]	Sync the directory after creating a file: this is apparently
	required for durability on Linux, according to the Linux fsync man
	page.

[#362]	Don't check if a page is on the avail or discard lists if we're
	salvaging the file, that is okay.

[#363]	Remove obsolete code dealing with forced eviction.

[#366]	Fake checkpoints may have the delete flag set, ignore them when
	rolling checkpoints forward.

[#367]	All metadata reads should ignore the application's transactional
	context.

[#369]	Support LSM as a data source for tables, column groups and indices.

* Add tuning options for LSM bloom filters, including controlling whether
  the oldest level in the tree has a Bloom filter, whether newly-created
  (level 0) files have Bloom filters, and passing arbitrary file
  configuration for Bloom filters.

* Add a merge generation to LSM chunks.  Add a statistic that reports the
  highest merge generation in a tree.

* Add a new LSM statistic tracking searches that could benefit from bloom
  filters.

* Enable LSM statistics in the "wt stat" utility.

* Interrupt LSM merge operations, rather than waiting on close.

* Wait for a while before looking for LSM major merges, in case merges
  catch up with inserts.

* Fix LSM index searches.  The main issue was LSM search_near was not
  always returning the closest key to the search key, which calling code
  expects.  It now tries hard to find the smallest cursor larger than the
  search key, and only if no larger record exists does it return the
  largest record smaller than the search key.

* Reset any old cursor position before an LSM search.  This limits hazard
  references in an LSM search to a single chunk.

* Fix a memory leak in an error path in Bloom filters.

* Tweak the search loops in hazard_{set,clear} in favor of
  last-in-first-out ordering.

* If there are many files open, some hotter than others, walk more files
  looking for pages to evict.

* Don't stop evicting until we reach the target, have eviction wake up
  periodically regardless of whether the application signals it.  This
  latter requires a "timed condition wait" operation.

* Tweaks to file handle flags for out-of-cache read performance on Linux
  (disable read-ahead and access time updates).

* Replace the WT_SESSION::dumpfile method with configuration strings to
  WT_SESSION::verify.

* Fix a bug where we weren't skipping unnecessary default checkpoints
  because we weren't handling the generational number included in the
  internal checkpoint name.

* Add a "force" configuration flag to WT_SESSION::checkpoint, object
  compaction needs it because the work it wants done is done by the block
  manager.

* Make compact and checkpoint operate on a table's indices.

* When doing a page truncate, lock down the page before we unpack the
  on-page cell -- it's possible the page could be instantiated, modified
  and reconciled while we're sleeping, in which case the WT_REF.addr field
  would no longer point on-page.


WiredTiger release 1.3.3, 2012-10-11
------------------------------------

This is a bugfix and performance tuning release, primarily related to LSM
trees.  The changes are as follows:

[#350] Checkpoint the metadata after successful schema-level operations.
       Otherwise, if process exits without closing the connection or
       running a checkpoint, created objects exist but there is no record
       in the metadata.

[#351] Don't put checkpoint extent blocks on the available list, blocks on
       it are considered for truncation; they have to go on the "checkpoint
       available" list.

* Choose LSM merges based on a measure of efficiency (levels collapsed per
  record), rather than simply choosing a minor or a major merge.  Tweak the
  merge heuristic so we don't end up with runs of smaller chunks in the
  middle of the tree.

* Add a connection-wide flag to disable LSM merges.

* Don't create Bloom filters for the oldest chunk in the system.  Add the
  ability to disable Bloom filters entirely.

* Fix fast-path for bit values in WT_CURSOR::set_value.

* Clean up allocation of LSM chunk IDs.

* Update bloom_get so that it doesn't hold a cursor position.

* Respect the page size for fixed-length column stores, remembering there
  are 8 bits per byte.

* Support bulk loading a bitmap into a fixed-length column store, update
  Bloom filter code to use this.

* Add an example program, ex_test_perf, to demonstrate basic LSM usage.

* Add a new statistics cursor type "statistics:lsm".  Update ex_stat.c to
  demonstrate usage.

* Add a statistics_fast flag to file statistics cursors.  Update LSM
  statistics so that they aggregate some cache statistics.  Add ability to
  open a statistics cursor on a checkpoint.

* Walk a constant number of pages for LRU eviction.

* Move the cache full check to after an update operation completes, when it
  is no longer holding hazard references.  This improves behavior with
  small caches.


WiredTiger release 1.3.2, 2012-10-03
------------------------------------

This is a bugfix and performance tuning release, primarily related to LSM
trees.  The changes are as follows:

* Implement minor merges for LSM trees, prefer them to major merges.

* Update hazard references, so the active array grows as needed.  Change
  the default hazard_max to 1000.

* Abort transactions if the cache is so full that they cannot make
  progress.

* Fix a bug where verify could crash if an empty checkpoint exists.

* Make the maximum number of chunks for merges configurable, rather than
  deriving a value from the number of hazard references available.

* Switch to an atomic add to allocate transaction IDs.  This fixes a subtle
  race before where two threads could temporarily have the same ID in the
  global state table.  If one of the threads timed out and the other thread
  committed its transaction with that ID, the commit would not become
  visible immediately.  This could lead to deadlock errors in workloads
  that are logically conflict-free.

* Have auto-commit transactions retry deadlocks.  This requires that we
  keep the user's key and value in the cursor.

* Simplify the code handling updated records in variable-length
  column-store reconciliation.

* Never wait for eviction when holding the schema lock.  This avoids
  deadlocks between opening a column store file and taking a checkpoint.

* Take care with the loop termination when walking files for eviction.  We
  were making one extra call into __wt_tree_walk, which would leave a leaf
  page in the WT_REF_EVICT_WALK state, unable to be evicted.  In some
  workloads, including LSM loads, we could end up with many files all
  consisting of a single leaf page, none of which could be evicted.

* Pause updates when the cache is full.

* In files marked as "out of cache", don't wait for eviction when reading a
  page.

* Fix the record count calculation for minor merges.  This was leading to
  no Bloom filter being created for minor merges after running for some
  time, leading to merges taking increasingly long to complete.

* Only sleep in the LSM checkpoint thread if no work is done.

* Add sanity check of cache size to LSM open.

[#338] Create fake checkpoints until an object is modified, so that a
       checkpoint between the cursor create and the bulk load doesn't make
       it impossible to do a bulk-load on the cursor.


WiredTiger release 1.3.1, 2012-09-25
------------------------------------

This is a bugfix release, primarily related to LSM trees.  The changes are
as follows:

[#309] Implement auto-commit of transactions at the API.  As well as
       ensuring the atomicity of complex operations, this change simplified
       code that simulated auto-commit internally and fixed a number of
       bugs.

[#321] Bulk-cursors no longer block checkpoints.  We can't write files that
       are being bulk-loaded, so change checkpoint to create checkpoints in
       the metadata that, if accessed, look like empty files.

       Tighten down the requirements for bulk-load, the only thing that can
       be bulk-loaded now is a newly created tree, not any empty file.

[#329] Add dictionary support to variable-length column store objects.
       Support large row-store reconciliation dictionaries: add a skiplist
       as the indexing mechanism.

[#333] Fix a leak of the in-memory transaction log structure and the LSM
       data source handle.

[#334] Fix a memory leak where a page's replacement address wasn't being
       freed.

* Check that LSM trees are not configured as column stores.

* Fix a race when starting the LSM worker thread. It was possible for the
  thread to exit immediately if it started fast enough.

* Two fixes for LSM, one to ensure that cursors read from a checkpoint if
  one is available. The other to reduce the number of empty chunks that can
  be created initially.

* Fix a bug that disabled bloom filters.

* The configure script checks for Python support in SWIG.

* If a drop operation fails to acquire all of the handle locks it needs,
  make sure it releases the primary handle lock.

* Fix a number of other minor bugs and memory leaks.


WiredTiger release 1.3.0, 2012-09-17
------------------------------------

This release contains a number of major new features, including:

* support for LSM trees with Bloom filters;
* support for hot backups; and
* support for fast truncation of files.

In addition, there are some critical bug fixes.  We recommend that all users
upgrade.  Here is the full list of changes:

[#143] Implement random record lookups.

[#168] Add support for LSM trees.

[#168] Add support for Bloom filters in LSM trees.

[#198] Handle page-generation wraparound.

[#236] Implement hot backups.

[#244] Index cursors for column-store objects may not be created using the
       record number as the index key.

[#247] Add a fast-path for WT_SESSION::truncate that avoids reading most
       data to be deleted.

[#259] Performance hack for cursor open: don't parse the configuration
       strings for a default value if the application didn't specify a
       configuration string.

[#262] Disable dump on child cursors: only the top-level cursor is wrapped
       in a dump cursor.

[#266] Deal with new / dropped indices in __wt_schema_open_index.

[#269] Checkpoint handles must not be open when they are overwritten.

[#271] Add support for a reserved checkpoint name "WiredTigerCheckpoint"
       that opens the object's last checkpoint.

[#271] Add the ability to access unnamed checkpoints.

[#274] Change cursor.equals to return a standard error value and store the
       cursor equality result in a separate argument.

[#275] If exclusive handle is required for an operation and it is not
       available, fail immediately: don't block.

[#276] Fix methods that return integer parameters from Python.  This
       includes cursor.equals and cursor.search_near.

[#277] Acquire the schema lock when creating the metadata file.  We're
       single-threaded, so it isn't protecting against anything, but the
       handle management code expects to have the schema lock.

[#279] Some optimizations for __wt_config_gets_defno.  Specifically, if
       we're dealing with a simple stack of config strings, just parse the
       application string rather than the full list of defaults.

[#279] Split the description string into a set of structures, to reduce the
       number of string comparisons and manipulation that's required.

[#282] Remove the cursor.reconfigure method, and replace it with
       documentation showing how to "reconfigure" cursors using the
       session.open_cursor method to duplicate them with different
       configuration strings.

[#284] Fix for a hazard reference race, where page eviction races with the
       creation of the hazard reference, we have to check the pointer
       itself as well as the state of the pointer.

[#285] We can clear the tree's modified flag on checkpoint, as long as the
       checkpoint writes all modifications.   Clear the tree's modified
       flag before we start the checkpoint, but reset it as necessary if
       reconciliation is unable to write all of the changes in a page.

[#287] Fix __wt_config_check to handle overlapping config values correctly.

[#289] Add support for read-committed isolation, make it the default.  Add
       a session-level "isolation" setting.

[#294] If txn_commit fails, document the transaction was rolled-back.

[#295] Expand the documentation on using cursors without explicit
       transactions.

[#300] Include all changes whenever closing a file, don't check for
       visibility.  If updates are skipped while evicting a page, give up.

[#305] Have "wt dump" fail more gracefully if the object doesn't exist.

[#310] When freeing a tracked address in reconciliation, clear it to avoid
       freeing the same address again on error.

[#314] Replace cursor.equals with cursor.compare

[#319] Clear the bulk_load_ok flag when closing handles.


* Add an "ancient transaction" statistic so we can find out if they're
  actually occurring in the field.

* Add an "was object ever modified" flag to the btree handle, and use it to
  avoid writing read-only objects during internal checkpoints, issue

* Add per-connection statistics counters for transaction checkpoint, begin,
  commit and rollback.  Add per-btree statistics counters for update
  conflicts.

* Another fixed-length column-store implicit record fix: if the earliest
  row in the object is row 10, and it's on an append list, we still must
  return rows 1-9, they've been implicitly created.

* Bulk cursors: disallow cursor.{equals,next,prev,reset,search,
  search_near,update,remove}; only close and insert are supported.

* Change session.truncate to support any cursor position for range
  truncation, not just keys that are known to exist.

* Checkpoint has to flush the metadata file, but only after it's flushed
  all of the other files.

* Discard obsolete WT_UPDATE structures during updates.

* Document that duplicated cursors are positioned at the same point as the
  cursor that was duplicated.

* Fix a (very unlikely) deadlock at startup, if an application issues a
  checkpoint before the eviction server has managed to open its session.

* Fix a core dump if we verify a file that's corrupted such that we are
  unable to load any checkpoints at all, and the per-checkpoint bit map is
  never set.

* If a page selected for eviction cannot be freed because it has some
  recent updates, try instead to free memory by trimming old updates.

* If a thread fails to evict a page, try to bump its snapshot.  This avoids
  the common case of read-committed threads getting stuck because one
  thread falls behind (e.g., because we can't evict during a checkpoint).

* If an exclusive table create fails, return EEXIST.

* If we try to remove a file that doesn't exist, don't complain, return
  success.

* If we're repeatedly taking a checkpoint with the same name, skip the work
  for read-only objects.

* Instead of flagging the empty tree's leaf page empty as part of creating
  an empty tree in memory, set the page as modified (to force
  reconciliation); if the leaf page is still empty at that time, then we'll
  figure it out during that reconciliation.  This fixes a memory leak where
  the leaf page of a empty tree wasn't being freed.

* It's not unreasonable to open a cursor on a non-existent table, don't
  complain, just return not-found.

* Move dist/RELEASE to the top level of the tree.

* Optimization: don't repeatedly look up btree handles for schema
  operations.

* Return keys from all operations: don't keep pointing to the application's
  key.

* Update btree usage of 64 bitstring implementation, so it's cleaner.

* Update the bitstring implementation to use 64 bit length strings.

* Updates performed without an active transaction should become visible
  with the current transaction ID.

* Upgrade to doxygen 1.8.x

* Use a real snapshot transaction for checkpoints.  Otherwise, the snapshot
  can be updated in between checkpointing multiple files (when updating the
  metadata).


WiredTiger release 1.2.2, 2012-06-20
------------------------------------

This is a bugfix release.  The changes are as follows:

* Defer making free pages available until the end of a checkpoint, in case
  there is a failure after processing some files.

* When checking the value of the "isolation" key, don't assume it is nul
  terminated.  This bug could cause transactions to run with incorrect
  isolation.

* Fix two bugs with snapshot isolation:

  1. reset the isolation level when the transaction completes;
  2. when checking visibility, check item's ID against the maximum snapshot ID
     (not the transaction's ID).


WiredTiger release 1.2.1, 2012-06-15
------------------------------------

This is a bugfix release.  The changes are as follows:

* Avoid a deadlock between eviction and checkpoint on the connection spinlock.

* Allocate "desc" buffers in heap memory so that they are correctly aligned
  (fixes direct_io support on Linux).

* Initialize the snapshot-avail list after cleaning it out, else we'll try and
  print a NULL pointer in VERBOSE mode.


WiredTiger release 1.2.0, 2012-06-04
------------------------------------

This release contains many bugfixes and improvements.  The major changes are:

[#138]	Add support for transactions with coarse-grained durability.
	Transactions provide atomicity guarantees and rollback, and uncommitted
	changes are never written to disk.  There is no on-disk log, so
	committed changes only become durable when the next checkpoint
	completes.  Checkpoints are implemented by creating
	transactionally-consistent snapshots within data files.

[#156]	Fully support operations that make schema changes with multiple
	sessions open concurrently.

[#159]	Disable internal page key suffix compression if a custom collator is
	configured.  This avoids issues with collators that require complete
	keys.

[#167]	Add support for durable snapshots within files.  While a snapshot is
	active, the pages used by the snapshot will not be overwritten.  If a
	file is accessed after a crash or application exit without calling
	WT_CONNECTION::close, any changes made after the last snapshot will be
	silently ignored.

[#214, #216]
	Fixes for forcing eviction with small caches.

WiredTiger release 1.1.5, 2012-04-26
------------------------------------

Don't update a WT_REF after it has been unlocked.

Add an operation to set a flag atomically, use it to avoid racing on page flags.

Fix a race between sync and reading that could cause a segfault.


WiredTiger release 1.1.4, 2012-04-16
------------------------------------

Check the versions of autoconf, automake and libtool to avoid failures when
trying to build from the github tree with versions that are too old.

[#191] Create the schema table as part of creating the environment so that
       application threads don't race trying to create it later.

[#193] Split-merge pages have to be reconciled to mark their parents dirty

[#194] The dump utility should only output configuration that can be passed to
       WT_SESSION::create.

Eviction fixes for out-of-cache update workloads:

* Fix an unlikely bug where the EVICT_LRU flag was cleared when a page in
  the LRU queue was overwritten with itself during a walk.  This led to an
  assertion failure when the page was later evicted.

* Clear all unused eviction queue entries while holding the lru_lock.

* Split WT_PAGE->flags so that there is no possibility of racing:
  (1) Move WT_PAGE_REC_* flags into WT_PAGE_MODIFY;
  (2) Use atomic operations to set and clear the remaining (2) page flags.

Move the test/format threads setting into the CONFIG file.


WiredTiger release 1.1.3, 2012-04-04
------------------------------------

Fix the "exclusive" config for WT_SESSION::create. [#181]
1. Make it work for files within a single session.
2. Make it work for files across sessions.
3. Make other data sources consistent with files.

Fix an eviction bug introduced into 1.1.2: when evicting a page with children,
remove the children from the LRU eviction queue.  Reduce the impact of clearing
a page from the LRU queue by marking pages on the queue with a flag
(WT_PAGE_EVICT_LRU).

During an eviction walk, pin pages up to the root so there is no need to spin
when attempting to lock a parent page.  Use the EVICT_LRU page flag to avoid
putting a page on the LRU queue multiple times.

Layer dump cursors on top of any cursor type.

Add a section on replacing the default system memory allocator to the tuning
page.

Typo in usage method for "wt write".

Don't report range errors for config values that aren't well-formed integers.


WiredTiger release 1.1.2, 2012-03-20
------------------------------------

Add public-domain copyright notices to the extension code.

test/format can now run multi-threaded, fixed two bugs it found:
(1) When iterating backwards through a skiplist, we could race with an insert.
(2) If eviction fails for a page, we have to assume that eviction has unlocked
    the reference.

Scan row-store leaf pages twice when reading to reduce the overhead of the
index array.

Eviction race fixes:
(1) Call __rec_review with WT_REFs: don't look at the page until we've checked
    the state.
(2) Clear the eviction point if we hit it when discarding a child page, not
    just the parent.

Eviction tuning changes, particularly for read-only, out-of-cache workloads.

Only notify the eviction server if an application thread doesn't find any pages
to evict, and then only once.

Only spin on the LRU lock if there might be pages in the LRU queue to evict.

Keep the current eviction point in memory and make the eviction walk run
concurrent with LRU eviction.

Every test now has err/out captured, and it is checked to assure it is empty at
the end of every test.


WiredTiger release 1.1.1, 2012-03-12
------------------------------------

Default to a verbose build: that can be switched off by running `configure
--enable-silent-rules`).

Account for all memory allocated when reading a page into cache.  Total memory
usage is now much closer to the cache size when using many small keys and
values.

Have application threads trigger a retry forced page eviction rather than
blocking eviction.  This allows rec_evict.c to simply set the WT_REF state to
WT_REF_MEM after all failures, and fixes a bug where pages on the forced
eviction queue would end up with state WT_REF_MEM, meaning they could be chosen
for eviction multiple times.

Grow existing scratch buffers in preference to allocating new ones.

Fix a race between threads reading in and then modifying a page.

Get rid of the pinned flag: it is no longer used.

Fix a race where btree files weren't completely closed before they could be
re-opened.  This behavior can be triggered by using a new session on every
operation (see the new -S flag to the test/thread program).  [#178]

When connections are closed, create a session and discard the btree handles.
This fixes a long-standing bug in closing a connection: if for any reason there
are btree handles still open, we need a real session handle to close them.

Really close btree handles: otherwise we can't safely remove or rename them.
Fixes test failures in test_base02 (among others).

Wait for application threads in LRU eviction to drain before walking a file.

Fix a buffer size calculation when updating the root address of a file.

Documentation fix: 10% of 1MB is 100KB.


WiredTiger release 1.1.0, 2012-02-28
------------------------------------

Add checks to the session.truncate method to ensure the start/stop
cursors reference the same object and have been initialized.

Implement cursor duplication via WT_SESSION::open_cursor.  [#161]

Switch to quiet builds by default.

Fix with automake version < 1.11, use foreign mode so that fewer
top-level files are required.

If a session or connection method is about to return WT_NOTFOUND (some
underlying object was not found), map it to ENOENT, only cursor methods
return WT_NOTFOUND. [#163]

Save and restore session->btree in schema ops to simplify calling code.
[#164]

Note the wiredtiger_open config string "multiprocess" is not yet
supported.

Move "root:F" and "version:F" entries for files into the value for
"file:F", so there is only a single record per file.
[NOTE: SCHEMA CHANGE]

When parsing config strings, continue to the end of the string in case
of repeated keys. [#124]

Don't require shared libraries unless Python is configured.

Add support for direct I/O, with the config "direct_io=(data,log)".
Build with _GNU_SOURCE on Linux to enable O_DIRECT.

Don't keep the last page of column stores pinned: it prevented eviction
of large trees created from scratch.

Allow application threads to evict pages from any tree: maintain a count
of threads doing LRU in each tree and wait for activity to drain when
closing.
