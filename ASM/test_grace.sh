nasm -f macho64 Grace.s
gcc Grace.o -o Grace
./Grace
diff Grace.s Grace_kid.s | wc