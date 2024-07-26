set output "../figures/weather.pdf"
set terminal pdf
set datafile separator ','

set key autotitle columnhead
set xlabel "Observed time frame" font "Palatino,14"
set ylabel "Measured temperature in Celsius" font "Palatino,14"

#range obtained via awk -F',' 'NR==2 {max=$3; min=$3} $3>=max {max=$3} $3<=min {min=$3} END {print "Max value: "max, "Min value: "min}' ~/Stažené/seattle-weather.csv
set xdata time
set timefmt "%Y-%m-%d"
set xrange ["2012-01-01":"2015-12-31"]
set format x "%Y-%m"
set yrange [-8:50]
set ytics -5,5,50

set key top right box
set key width 1
set key height 1
set key font "Palatino,12"

set grid
set border lw 2
set tics nomirror
set tics font "Palatino, 12"

plot '../src/seattle-weather.csv' using 1:3 with lines lc 7 lt 1, \
     '../src/seattle-weather.csv' using 1:4 with lines lc 3 lt 1
