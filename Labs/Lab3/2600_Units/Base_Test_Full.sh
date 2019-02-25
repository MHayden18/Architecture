#!/bin/bash

date
echo "starting cc1 out order"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 4 -res:memport 4 -res:fpalu 4 -res:fpmult 4 -issue:inorder false -bpred taken -redir:sim "Baseline_Full_Outorder_Taken.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 4 -res:memport 4 -res:fpalu 4 -res:fpmult 4 -issue:inorder false -bpred nottaken -redir:sim "Baseline_Full_Outorder_NotTaken.txt" cc1.ss -O 1stmt.i i
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 4 -res:memport 4 -res:fpalu 4 -res:fpmult 4 -issue:inorder false -bpred "2Lev" -redir:sim "Baseline_Full_Outorder_2Lev.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 4 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "Baseline_I_OutOrder_alu4.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 4 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "Baseline_I_OutOrder_mult4.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 4 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "Baseline_FP_OutOrder_alu4.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 4 -issue:inorder false -bpred "2Lev" -redir:sim "Baseline_FP_OutOrder_mult4.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 in-order, taken width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 4 -res:fpalu 1 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "Baseline_Mem4_OutOrder.txt" cc1.ss -O 1stmt.i 
echo "done"



