#!/bin/bash

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -bpred taken -redir:sim "Baseline_Taken_Inorder.txt" cc1.ss -O 1stmt.i 
echo "done"

diff 1stmt.s 1stmt.s.ref
echo "done with diff check"
date 

date
echo "starting cc1 in-order, not taken, width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -bpred nottaken -redir:sim "Baseline_NotTaken_InOrder.txt" cc1.ss -O 1stmt.i 
echo "done"

diff 1stmt.s 1stmt.s.ref
echo "done with diff check"
date 

date
echo "starting cc1 in-order, not taken, width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -bpred "2lev" -redir:sim "Baseline_2Lev_InOrder.txt" cc1.ss -O 1stmt.i 
echo "done"

diff 1stmt.s 1stmt.s.ref
echo "done with diff check"
date 