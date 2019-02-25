#!/bin/bash

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:2048:8:1:l -bpred "2Lev" -redir:sim "16KB_Block8_Assoc1.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:1024:8:2:l -bpred "2Lev" -redir:sim "16KB_Block8_Assoc2.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:512:8:4:l -bpred "2Lev" -redir:sim "16KB_Block8_Assoc4.txt" cc1.ss -O 1stmt.i 
echo "done"

echo "Done with 16KB Block size 8 Bytes"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:1024:16:1:l -bpred "2Lev" -redir:sim "16KB_Block16_Assoc1.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:512:16:2:l -bpred "2Lev" -redir:sim "16KB_Block16_Assoc2.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:256:16:4:l -bpred "2Lev" -redir:sim "16KB_Block16_Assoc4.txt" cc1.ss -O 1stmt.i 
echo "done"

echo "Done with 16KB Block size 16 Bytes"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:512:32:1:l -bpred "2Lev" -redir:sim "16KB_Block32_Assoc1.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:256:32:2:l -bpred "2Lev" -redir:sim "16KB_Block32_Assoc2.txt" cc1.ss -O 1stmt.i 
echo "done"

date
echo "starting cc1 "
sim-outorder -fetch:ifqsize 4 -decode:width 4 -issue:width 4 -commit:width 4 -res:ialu 1 -res:imult 1 -res:memport 1 -res:fpalu 1 -res:fpmult 1 -issue:inorder true -cache:dl1:128:32:4:l -bpred "2Lev" -redir:sim "16KB_Block32_Assoc4.txt" cc1.ss -O 1stmt.i 
echo "done"