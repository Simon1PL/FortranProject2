all:
	gfortran -o signal src/zad1.F90 -std=f2008 -lfftw3
	./signal
	gfortran -o szumy src/zad2.F90 -std=f2008 -lfftw3
	./szumy

clear:
	rm -f *.o *.a *.so main signal szumy

clean: clear
