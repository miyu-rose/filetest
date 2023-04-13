SHELL=fish.x
AS=has060
LK=hlk

OBJ=filetest.o

all : filetest.x

zdrvtest.x : $(OBJ)
	$(LK) -x -o$@ $(OBJ)

%.o : %.S
	$(AS) -u -w3 $<
%.o : %.s
	$(AS) -u -w3 $<
%.o : %.HAS
	$(AS) -u -w3 $<


clean :
	-rm *.o *.x *.*~ *.bak > NUL
