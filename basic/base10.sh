#!/bin/bash

echo "20.5+5" | bc
echo "20.5*5" | bc

echo "scale=10;sqrt(2/3)" | bc -l
radius=5
echo "3.14*${radius}^2" | bc -l
