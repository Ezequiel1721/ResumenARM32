# Makefile
all: holamundo
holamundo: holamundo.o
	ld -o $@ $+
holamundo.o: holamundo.s
	as -gstabs -o $@ $<
clean:
	rm -vf holamundo *.o
