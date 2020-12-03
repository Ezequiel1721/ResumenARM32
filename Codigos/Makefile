# Makefile
all: holamundo
holamundo: holamundo.o
	ld -o $@ $+
holamundo.o: holamundo.s
	as -gstabs -mfpu=vfpv2 -o $@ $<
clean:
	rm -vf holamundo *.o
