#!/bin/bash

b1=$1
b2=$2
echo $b1 > /tmp/b1.txt
echo $b2 > /tmp/b2.txt

rmats.py --b1 $b1 --b2 $b2 -t $3 --readLength $4 --gtf $5 --od $6 --nthread $7 --tstat $8