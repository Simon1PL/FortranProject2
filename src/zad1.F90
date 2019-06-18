program main
	use, intrinsic :: iso_c_binding
	implicit none
	include "fftw3.f03"
	integer, parameter :: Fs = 1024
	
	!W JULIII
	Fs = 1024;
	t = 0:1/(Fs-1):1 
	x = sin.(2*pi*t*200) + 2* sin.(2*pi*t*400)
	plot(t,x)
	sticks((abs.(fft(x))))
	!KONIEC

	real(kind=4), allocatable, dimension(:,:) :: akind4
	real :: start, endd
	integer :: i, seed(12)
	seed=time()
	call random_seed(put=seed)
	open(unit=19, file="..\res\res4naive")
	open(unit=20, file="..\res\res4better")
	i=10
	do while ( i .LE. 1280 )
		allocate (akind4(i,i))
		allocate (bkind4(i,i))
		CALL RANDOM_NUMBER(akind4)
		CALL RANDOM_NUMBER(bkind4)
		call cpu_time(start)
		res4=naivmull(akind4,bkind4)
		call cpu_time(endd)
		write (19,*) i, endd-start
		call cpu_time(start)
		res4=bettmull(akind4,bkind4)
		call cpu_time(endd)
		write (20,*) i, endd-start
		call cpu_time(start)
		res4=dotmull(akind4,bkind4)
		call cpu_time(endd)
		write (21,*) i, endd-start
		call cpu_time(start)
		res4=matmul(akind4, bkind4)
		call cpu_time(endd)
		write (22,*) i, endd-start
		if(allocated(akind4)) deallocate(akind4)
		if(allocated(bkind4)) deallocate(bkind4)
		i=2*i
	end do
end program main