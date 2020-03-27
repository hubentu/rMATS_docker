#!/bin/bash

b1=$1
b2=$2
echo $b1 > /tmp/b1.txt
echo $b2 > /tmp/b2.txt

python /opt/rMATS.4.0.2/rMATS-turbo-Linux-UCS4/rmats.py --b1 /tmp/b1.txt --b2 /tmp/b2.txt -t $3 --readLength $4 --gtf $5 --od $6 --nthread $7 --tstat $8
