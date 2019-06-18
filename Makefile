all:
	gfortran -o signal zad1.F90 -Wall -std=f2008 -Ldirectory -Wtabs -lfftw3
	./signal
	gfortran -o szumy zad2.F90 -Wall -std=f2008 -Ldirectory -Wtabs -lfftw3
	./szumy

clear:
	rm -f *.o *.a *.so main signal szumy

clean:
	rm -f *.o *.a *.so main signal szumy