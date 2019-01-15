#!/bin/bash

date
echo "starting compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -issue:inorder true -redir:sim "compress95_stdout_1_1_1_1_inorder.txt" compress95.ss < compress95.in > compress95_output_1_1_1_1_inorder.txt
echo "done"
echo "running diff on compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
diff compress95_output_1_1_1_1_inorder.txt compress95.out
echo "done with diff check"
date

