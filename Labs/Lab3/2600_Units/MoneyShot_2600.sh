#!/bin/bash

date
echo "starting cc1 money"
sim-outorder -fetch:ifqsize 2 -decode:width 2 -issue:width 2 -commit:width 2 -res:ialu 2 -res:imult 1 -res:memport 2 -res:fpalu 2 -res:fpmult 1 -issue:inorder true -bpred "2Lev" -redir:sim "2600_MoneyShotBoi.txt" cc1.ss -O 1stmt.i 
echo "done"

diff 1stmt.s 1stmt.s.ref
echo "done with diff check"
date 
