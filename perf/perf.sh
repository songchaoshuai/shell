perf stat ./test
perf top -e cache-miss
perf list|grep  cache-miss
perf top -e cache-misses
perf record -e cpu-clock ./test
perf report
#function graph
perf record -e cpu-clock -g ./test
perf report

