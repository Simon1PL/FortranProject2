program main
	use, intrinsic :: iso_c_binding
	implicit none
	include "fftw3.f03"
	!W JULIII
	!Fs = 1024;
	!t = 0:1/(Fs-1):1 
	!x = sin.(2*pi*t*200) + 2* sin.(2*pi*t*400)
	!plot(t,x)
	!sticks((abs.(fft(x))))
	!FORTRAN
	integer, parameter :: Fs = 1024
	real(kind = 16) :: t = 0.0
	real(kind = 16) :: diff = 1/real(Fs-1)
	real(kind = c_double), allocatable :: x(:) 
	real(kind= c_double_complex), allocatable :: res(:)
	integer :: i = 1
	real, parameter :: pi = 3.14159
	type(c_ptr) :: fftw_plan
	open(unit=19, file="..\res\signal")
	open(unit=20, file="..\res\transformata")
	allocate(x(Fs))
	allocate(res((Fs/2)+1))
	do while ( i .LE. Fs )
		x(i)=sin(2*pi*t*200) + 2*sin(2*pi*t*400)
		write(19,*)t, " ", x(i)
		t=t+diff
		i=i+1
	end do
	fftw_plan=fftw_plan_dft_r2c_1d(size(x), x, res,FFTW_ESTIMATE+FFTW_UNALIGNED)
	call fftw_execute_dft_r2c(fftw_plan, x, res)
	do i=1,(n/2)+1
		write(20,*)i, " ", abs(res(i))
	end do
	call fftw_destroy_plan(fftw_plan)
	close(19)
	close(20)
end program main