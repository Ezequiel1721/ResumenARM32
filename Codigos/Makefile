# Makefile
all: primero
primero: primero.o
	gcc -o $@ $+
first.o: primero.s
	as -g -mfpu=vfpv2 -o $@ $<
clean:
	rm -vf primero *.o
