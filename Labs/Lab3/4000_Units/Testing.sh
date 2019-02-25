#!/bin/bash

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 4 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "5000_4ALUs_IMult.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 1 -res:memport 4 -res:fpalu 1 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "5000_4ALUs_Memport.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 1 -res:memport 1 -res:fpalu 4 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "5000_4ALUs_FPALU.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 4 -issue:inorder false -bpred "2Lev" -redir:sim "5000_4ALUs_FPMult.xt" cc1.ss -O 1stmt.i 
echo "done"
