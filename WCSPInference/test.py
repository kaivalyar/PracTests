import timeit
import sys
import os
import time
from pracmln import query
from pracmln import MLN, Database, query

def main(arg='.'):
    #if (len(sys))
    pth = os.path.join(arg, 'wts.pybpll.smoking-train-smoking.mln')
    mln = MLN(mlnfile=pth, grammar='StandardGrammar')
    pth = os.path.join(arg, 'smoking-test-smaller.db')
    db = Database(mln, dbfile=pth)
    #with open(os.path.join(arg, 'man_performance.txt'), 'a') as fl:
        
    start = time.time()
        #t = 1000* timeit.timeit("test(False)", setup="from __main__ import test, set; set()", number=10)
    query(queries='Cancer,Smokes,Friends', method='WCSPInference', mln=mln, db=db, verbose=False, multicore=True).run()
    t1 = time.time()-start
    #print('single core exact inference test: {}'.format(t))
        #fl.write(str(t))
        #fl.write('\t(SingleCore)\n')
    start = time.time()
        #t = 1000* timeit.timeit("test(True)", setup="from __main__ import test, set; set()", number=10)
    query(queries='Cancer,Smokes,Friends', method='WCSPInference', mln=mln, db=db, verbose=False, multicore=False).run()
    t2 = time.time()-start
    #print('multi core exact inference test: {}'.format(t))
    print('Inference, WCSPInference, {}, {}'.format(t1, t2))
        #fl.write(str(t))
        #fl.write('\t(MultiCore)\n')
        
        

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main()
    else:
        main(sys.argv[1])
    
    
