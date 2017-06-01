#!/usr/bin/env bash

## Collect all png files in the files array
files=( *png )
## How many should be done at once
batch=50
padtowidth=4

## Read the array in batches of $batch
for (( i=0; $i<${#files[@]}; i+=$batch ))
do
  ## Convert this batch
  foo=$(printf "%04d" $i)
  convert -delay 4 -loop 0 "${files[@]:$i:$batch}" -fuzz 10% -layers Optimize animated.$foo.gif
done
## Now, merge them into a single file
convert  animated.*.gif FinalBattleForRiddleEarth.gif
