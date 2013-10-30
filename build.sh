rm -f *.o
echo "building cplusplus.o"
CC cplusplus.cpp -c
echo "building c executable"
cc test.c cplusplus.o -lcray-c++-rts -o c.exe
echo "building fortran executable"
ftn test.f90 cplusplus.o -L/opt/cray/cce/8.2.1/CC/x86-64/lib/x86-64/ -lcray-c++-rts -o ftn.exe

