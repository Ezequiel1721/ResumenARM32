  
# POR: Ezequiel1721
# No. Control: 17212127
# Archivo Makefile: Codigo que compila un programa definido.
# Fecha: 02/12/2020
# Materia: Lenguajez de interfaz.

# Makefile
all: holamundo
holamundo: holamundo.o
	ld -o $@ $+
holamundo.o: holamundo.s
	as -gstabs -mfpu=vfpv2 -o $@ $<
clean:
	rm -vf holamundo *.o
