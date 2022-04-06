#! /bin/bash
array=("dog" "cat" "car")
for var in "${array[@]}"; do
    echo $var
done