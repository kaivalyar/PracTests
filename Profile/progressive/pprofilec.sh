#!/bin/bash

#// Friends(Katherine, Lars)
#// Friends(Lars, Katherine)
#// Friends(Michael, Nick)
#// Friends(Nick, Michael)
#// Friends(Ivan, Michael)
#// Smokes(Nick)

echo "" > smoking-test.db
PYTHONPATH="${PYTHONPATH}:/home/kaivalya/Documents/WORK/GSoC/kPracMLN/python3/"
source ~/.prac3/bin/activate


echo "Cancer(Ann)" > smoking-test.db
echo "!Cancer(Bob)" >> smoking-test.db
echo "!Friends(Ann,Bob)" >> smoking-test.db
python3 -m cProfile -o cython1.txt test.py > runtimes.txt

echo "Smokes(Ivan)" >> smoking-test.db
python3 -m cProfile -o cython2.txt test.py >> runtimes.txt

echo "Friends(Ivan, John)" >> smoking-test.db
python3 -m cProfile -o cython3.txt test.py >> runtimes.txt

echo "Friends(John, Ivan)" >> smoking-test.db
python3 -m cProfile -o cython4.txt test.py >> runtimes.txt

#echo "Friends(Michael, Ivan)" >> smoking-test.db
#python3 -m cProfile -o cython5.txt test.py >> runtimes.txt


deactivate
#cprofilev -f cython[X].txt
