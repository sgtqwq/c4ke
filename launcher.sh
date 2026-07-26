#!/bin/sh
T=/tmp/$$
tail -n+5 $0|xz -d|c++ -O3 -std=c++2b -pthread -march=native -xc++ -o$T -
(sleep 1;rm $T)&exec $T
