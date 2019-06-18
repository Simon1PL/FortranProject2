all:
	gfortran -o signal zad1.F90 -std=f2008 -Ldirectory -lfftw3
	./signal

clear:
	rm -f *.o *.a *.so main signal

clean:
	rm -f *.o *.a *.so main signal