#!/bin/bash

path="/exp/uboone/data/users/lcoopert/event_generators/data/temp"
nthreads=10  #Don't go above 10 jobs for memory reasons on uboonebuild03
for i in `seq 1 "$nthreads"`; do
  ii=$(($i+0))
  outfile="universes_iter"$ii"_london"
  if [[ "$i" -eq 1 ]]; then
    time nuissyst -c nuisinput.xml -o "${path}"/"${outfile}.root" | tee "${path}"/"${outfile}.log" &
  else
    time nuissyst -c nuisinput.xml -o "${path}"/"${outfile}.root" >>    "${path}"/"${outfile}.log" &
  fi
done
wait
echo "Done!"
