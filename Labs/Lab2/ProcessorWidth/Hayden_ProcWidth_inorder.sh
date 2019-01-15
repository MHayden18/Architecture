#!/bin/bash

date
echo "starting compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -issue:inorder true -redir:sim "compress95_stdout_1_1_1_1_inorder.txt" compress95.ss < compress95.in > compress95_output_1_1_1_1_inorder.txt
echo "done"
echo "running diff on compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
diff compress95_output_1_1_1_1_inorder.txt compress95.out
echo "done with diff check"
date

echo "-----------------------------------------------------------------"
date
echo "Starting compress95 in-order width 2, intalu 2, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 2 -decode:width 2 -issue:width 2 -commit:width 2 -res:ialu 2 -res:imult 1 -res:memport 1 -issue:inorder true -redir:sim "compress95_stdout_2_2_1_1_inorder.txt" compress95.ss < compress95.in > compress95_output_2_2_1_1_inorder.txt
echo "done"
echo "running diff on compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
diff compress95_output_2_2_1_1_inorder.txt compress95.out
echo "done with diff check"
date

echo "-----------------------------------------------------------------"
date
echo "Starting compress95 in-order width 4, intalu 3, intmult 2, memprt 2"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder true -redir:sim "compress95_stdout_4_3_2_2_inorder.txt" compress95.ss < compress95.in > compress95_output_4_3_2_2_inorder.txt
echo "done"
echo "running diff on compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
diff compress95_output_4_3_2_2_inorder.txt compress95.out
echo "done with diff check"
date

echo "-----------------------------------------------------------------"
date
echo "Starting compress95 in-order width 8, intalu 6, intmult 3, memprt 2"
sim-outorder -fetch:ifqsize 8 -decode:width 8 -issue:width 8 -commit:width 8 -res:ialu 6 -res:imult 3 -res:memport 2 -issue:inorder true -redir:sim "compress95_stdout_8_6_3_2_inorder.txt" compress95.ss < compress95.in > compress95_output_4_3_2_2_inorder.txt
echo "done"
echo "running diff on compress95 in-order width 1, intalu 1, intmult 1, memprt 1"
diff compress95_output_8_6_3_2_inorder.txt compress95.out
echo "done with diff check"
date