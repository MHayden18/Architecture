#!/bin/bash

date
echo "starting go in-order width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -issue:inorder true -redir:sim "go_stdout_1_1_1_1_inorder.txt" go.ss 50 9 2stone9.in > go_output_1_1_1_1_inorder.txt
echo "done"
echo "running diff on go in-order width 1, intalu 1, intmult 1, memprt 1"
diff go_output_1_1_1_1_inorder.txt 2stone9.out
echo "done with diff check"
date

