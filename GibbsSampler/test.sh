#!/bin/bash

PYTHONPATH="${PYTHONPATH}:/home/kaivalya/Documents/WORK/GSoC/kPracMLN/python3/"


source ~/.prac3/bin/activate
python3 test.py .. >> ../cython_summary.csv
deactivate


PYTHONPATH=""

source ~/p3/bin/activate
python3 test.py .. >> ../python_summary.csv
deactivate


PYTHONPATH="${PYTHONPATH}:/home/kaivalya/Documents/WORK/GSoC/kPracMLN/python3/"

