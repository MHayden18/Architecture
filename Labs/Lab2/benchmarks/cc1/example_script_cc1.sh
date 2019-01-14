#!/bin/bash

date
echo "starting cc1 in-order width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -issue:inorder true -redir:sim "cc1_stdout_1_1_1_1_inorder.txt" cc1.ss -O 1stmt.i 
echo "done"
echo "running diff for cc1 in-order width 1, intalu 1, intmult 1, memprt 1"
diff 1stmt.s 1stmt.s.ref
echo "done with diff check"
date 

