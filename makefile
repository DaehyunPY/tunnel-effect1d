# q1 tunneling

TARGET = a.out
OBJECTS = sde.o const.o main.o
COMMON_MOD = sde.f90 const.f90 main.f90

F08 = /usr/local/bin/gfortran
# F08 = /usr/bin/gfortran
# F08 = /opt/intel/bin/ifort
FFLAGS = -fimplicit-none -fbounds-check

INCLUDE = -I/usr/include
LIB = -L/usr/lib
LAPACK = -llapack -lblas
FFW = -lfftw3 -lm





all: clean ${TARGET} ${OBJECTS}

${TARGET}: ${OBJECTS}
	${F08} -o $@ ${OBJECTS}

${OBJECTS}: ${COMMON_MOD}
	${F08} -c ${COMMON_MOD} ${FFLAGS}





clean: ;rm -f *.o *.mod

