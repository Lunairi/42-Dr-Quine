nasm -f macho64 Colleen.s
gcc Colleen.o -o Colleen
./Colleen > colleen_output
diff Colleen.s colleen_output | wc