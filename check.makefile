# q1 1d tunneling


# TARGET = a.out
OBJECTS = const.o
COMMON_MOD = const.f90

FORTRAN = /usr/local/bin/gfortran
# FORTRAN = /usr/bin/gfortran
# FORTRAN = /opt/intel/bin/ifort
FFLAGS = -fimplicit-none -fbounds-check

INCLUDE = -I/usr/include
LIB = -L/usr/lib
LAPACK = -llapack -lblas
FFW = -lfftw3 -lm





all: ${OBJECTS}

# ${TARGET}: ${OBJECTS}
# 	${FORTRAN} -o $@ ${OBJECTS}

${OBJECTS}: ${COMMON_MOD}
	${FORTRAN} -c ${COMMON_MOD} ${FFLAGS}





clean: ;rm -f *.o *.mod

