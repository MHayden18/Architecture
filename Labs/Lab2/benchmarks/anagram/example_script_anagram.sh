#!/bin/bash

date
echo "starting anagram in-order width 1, intalu 1, intmult 1, memprt 1"
sim-outorder -fetch:ifqsize 1 -decode:width 1 -issue:width 1 -commit:width 1 -res:ialu 1 -res:imult 1 -res:memport 1 -issue:inorder true -redir:sim "anagram_stdout_1_1_1_1_inorder.txt" anagram.ss words < anagram.in > anagram_output_1_1_1_1_inorder.txt
echo "done"
echo "running diff for anagram in-order width 1, intalu 1, intmult 1, memprt 1"
diff anagram_output_1_1_1_1_inorder.txt anagram.out
echo "done"
date

 
