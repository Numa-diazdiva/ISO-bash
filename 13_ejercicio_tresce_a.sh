#!/bin/bash

for ((numero=1; numero < 101; numero++))
do
    echo "$numero, ${numero}² = $(expr $numero \* $numero)"
done
