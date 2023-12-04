#!/bin/bash

echo '$# = '"$#"
echo '$* = '"$*"
echo '$@ = '"$@"

for i in 0 1 2 3 4 5 6 7 8 9; do
    echo -n \$$i=
    eval "echo \$$i"
done
