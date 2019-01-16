#!/bin/bash

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 in-order taken"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder true -bpred taken -redir:sim "compress95_stdout_taken_inorder.txt" compress95.ss < compress95.in > compress95_output_taken_inorder.txt 
echo "done"
echo "running diff on compress95 in-order taken"
diff compress95_output_taken_inorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 in-order not taken"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder true -bpred nottaken -redir:sim "compress95_stdout_nottaken_inorder.txt" compress95.ss < compress95.in > compress95_output_nottaken_inorder.txt 
echo "done"
echo "running diff on compress95 in-order not taken"
diff compress95_output_nottaken_inorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 in-order 2lev"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder true -bpred "2lev" -redir:sim "compress95_stdout_2lev_inorder.txt" compress95.ss < compress95.in > compress95_output_2lev_inorder.txt 
echo "done"
echo "running diff on compress95 in-order 2lev"
diff compress95_output_2lev_inorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 in-order, perfect"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder true -bpred perfect -redir:sim "compress95_stdout_perfect_inorder.txt" compress95.ss < compress95.in > compress95_output_perfect_inorder.txt 
echo "done"
echo "running diff on compress95 in-order, perfect"
diff compress95_output_perfect_inorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 out-order taken"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder false -bpred taken -redir:sim "compress95_stdout_taken_outorder.txt" compress95.ss < compress95.in > compress95_output_taken_outorder.txt 
echo "done"
echo "running diff on compress95 out-order taken"
diff compress95_output_taken_outorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 out-order not taken"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder false -bpred nottaken -redir:sim "compress95_stdout_nottaken_outorder.txt" compress95.ss < compress95.in > compress95_output_nottaken_outorder.txt 
echo "done"
echo "running diff on compress95 out-order not taken"
diff compress95_output_nottaken_outorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 out-order 2lev"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder false -bpred "2lev" -redir:sim "compress95_stdout_2lev_outorder.txt" compress95.ss < compress95.in > compress95_output_2lev_outorder.txt 
echo "done"
echo "running diff on compress95 out-order 2lev"
diff compress95_output_2lev_outorder.txt compress95.out
echo "done with diff check"
date

echo "--------------------------------------------------------------------------------------------------"
date
echo "Starting compress95 out-order, perfect"
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 3 -res:imult 2 -res:memport 2 -issue:inorder false -bpred perfect -redir:sim "compress95_stdout_perfect_outorder.txt" compress95.ss < compress95.in > compress95_output_perfect_outorder.txt 
echo "done"
echo "running diff on compress95 out-order, perfect"
diff compress95_output_perfect_outorder.txt compress95.out
echo "done with diff check"
date