#!/bin/bash

PYTHONPATH=""
source ~/p3/bin/activate
python3 -m cProfile -o python.txt test.py
deactivate
PYTHONPATH="${PYTHONPATH}:/home/kaivalya/Documents/WORK/GSoC/kPracMLN/python3/"
# source ~/.prac3/bin/activate
# python3 -m cProfile -o cython.txt test.py
# deactivate

## cprofilev -f outp.txt 
