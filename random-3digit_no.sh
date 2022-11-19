declare -a arr

for ((i = 0; i < 10; i++)); do
  element=$((RANDOM % 1000))
  arr[i]=$element
done

echo ${arr[@]}
greatest=${array[0]}

function findGreatest() {
  array=("$@")

  for ((i = 1; i < 10; i++)); do
    if ((array[i] > greatest)); then
      greatest=${array[i]}
    fi
  done

  echo "Greatest No is: " $greatest
}

findGreatest ${arr[@]}


function findGreatest_2() {
  array=("$@");

  greatest_2=0
  for ((i = 1; i < 10; i++)); do
    if ((arr[i] > greatest_2 & arr[i] != greatest)); then
      greatest_2=${array[i]}
    fi
  done

  echo "Greatest_2 No is: $greatest_2"
}

findGreatest_2 ${arr[@]}