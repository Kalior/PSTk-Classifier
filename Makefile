# Makefile courtesy of Martin Holmudden.

LIB1 = common
LIB2 = random
LIB3 = trees

APP1 = classifier


APPS:
	( make LIBS )
	( cd $(APP1); make; mv $(APP1) ../bin )

LIBS:
	( cd $(LIB1); make install )
	( cd $(LIB2); make install )
	( cd $(LIB3); make install )

clean:
	( cd $(APP1); make clean )
	( cd $(LIB1); make clean )
	( cd $(LIB2); make clean )
	( cd $(LIB3); make clean )
	( cd lib; rm lib*.a; )
	( cd bin; rm $(APP1); )
