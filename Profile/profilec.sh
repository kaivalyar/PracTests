#!/bin/bash

PYTHONPATH="${PYTHONPATH}:/home/kaivalya/Documents/WORK/GSoC/kPracMLN/python3/"
source ~/.prac3/bin/activate
python3 -m cProfile -o cython.txt test.py
deactivate

## cprofilev -f outp.txt 
