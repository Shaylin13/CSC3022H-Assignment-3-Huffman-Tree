CC=g++

huffencode: main.o 
	$(CC) main.o -o huffencode

main.o: main.cpp HuffmanTree.h
	$(CC) -c main.cpp

clean:
	rm -f *.o huffencode
	rm -f *.hdr
	rm -f *.bin

run:
	./huffencode "input.txt" "output"
