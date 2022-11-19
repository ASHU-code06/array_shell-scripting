#!/bin/bash
declare -a arr

function isPalimdrome() {
  local digit=$1
  local temp=$digit
  if ((digit / 10 != 0)); then
    reverse=0
    while [ $temp -gt 0 ]; do
      remainder=$((temp % 10))
      reverse=$((reverse * 10 + remainder))
      temp=$((temp / 10))
    done
    if ((reverse == digit)); then
      arr+=($digit)
    fi
  fi
}

for ((i = 1; i < 101; i++)); do
  isPalimdrome $i
done

echo ${arr[@]}