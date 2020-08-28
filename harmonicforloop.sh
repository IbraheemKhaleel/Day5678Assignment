#!/bin/bash -x
harmonic=0
read -p " Enter a number a harmonic number " n
for (( i=1;i<=$((n));i++ ))
do
	harmonic=$((harmonic+(1/i)))
done
echo "Harmonic function equals $harmonic "

