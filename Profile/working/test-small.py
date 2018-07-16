import timeit
import sys
import os
import time
from pracmln import query
from pracmln import MLN, Database, query

def main(arg='.'): #(arg='..'):
    #if (len(sys))
    pth = os.path.join(arg, 'wts.pybpll.smoking-train-smoking.mln')
    #pth = os.path.join(arg, 'learnt.cll.scenes-new-object-detection.mln')
    mln = MLN(mlnfile=pth, grammar='StandardGrammar')
    #mln = MLN(mlnfile=pth, grammar='PRACGrammar')
    pth = os.path.join(arg, 'smoking-test-small.db')
    #pth = os.path.join(arg, 'test.db')
    db = Database(mln, dbfile=pth)
    start = time.time()
    query(method='EnumerationAsk', mln=mln, db=db, verbose=False, multicore=False).run()
    t2 = time.time()-start
    print('exact inference test: {}'.format(t2))

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main()
    else:
        main(sys.argv[1])
    
    
