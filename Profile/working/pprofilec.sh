#!/bin/bash

echo $1 >> runtimes.txt


PYTHONPATH="${PYTHONPATH}:/home/kaivalya/Documents/WORK/GSoC/kPracMLN/python3/"
source ~/.prac3/bin/activate

python3 -m cProfile -o profile-data.txt test.py >> runtimes.txt

deactivate


echo $1 >> profiles/README.md
#cprofilev -f cython[X].txt
