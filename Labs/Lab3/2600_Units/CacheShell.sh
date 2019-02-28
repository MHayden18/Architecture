#!/bin/bash

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 \
-res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:2048:8:1:l \
-bpred "2Lev" -redir:sim "16KB_Block8_Assoc1.txt" cc1.ss -O 1stmt.i 
echo "done"
