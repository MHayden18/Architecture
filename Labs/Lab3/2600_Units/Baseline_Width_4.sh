#!/bin/bash

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -bpred "2Lev" -redir:sim "Baseline_Width4.txt" cc1.ss -O 1stmt.i 
echo "done"

diff 1stmt.s 1stmt.s.ref
echo "done with diff check"
date


