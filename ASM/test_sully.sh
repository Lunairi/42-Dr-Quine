nasm -f macho64 Sully.s
gcc Sully.o -o Sully
./Sully
diff Sully.s Sully_0.s 
diff Sully_4.s Sully_1.s 
diff Sully_3.s Sully_2.s 