#!/bin/bash

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 2 -decode:width 2 -issue:width 2 -commit:width 2 -res:ialu 2 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder false -bpred "2Lev" -redir:sim "4000_Width2_2ALU_OutOrder.txt" cc1.ss -O 1stmt.i 
echo "done"
