program main
use, intrinsic :: iso_c_binding
implicit none
 include "fftw3.f03"
 !W JULIII
 !Fs = 1024;  
 !t = 0:1/(Fs-1):1 
 !x=cos.(2*pi*t)
 !x=map(a->a+rand(),x)
 !using Plots
 !plot(t,x)
 !using FFTW
 !y=abs.(fft(x))
 !sticks(y)
 !i=1:1:1024
 !for x in i
 !    if(abs(y[x])<50)
 !        y[x]=0
 !    end
 !end
 !sticks(y)
 !re=real(ifft(y))
 !plot(t,re)
 !FORTRAN
 integer, parameter :: Fs = 1024
 real(kind = 16) :: t = 0.0
 real(kind = 16) :: diff = 1/real(Fs-1)
 real(kind = c_double), allocatable :: x(:) 
 complex(kind= c_double_complex), allocatable :: res(:)
 integer :: i = 1
 real, parameter :: pi = 3.14159
 real :: myRandom
 type(c_ptr) :: fftw_plan2
 type(c_ptr) :: fftw_plan
 open(unit=19, file="res/cosinus")
 open(unit=20, file="res/transformataCosinus")
 open(unit=21, file="res/cosinusRandom")
 open(unit=22, file="res/transformataCosinusRandom")
 open(unit=23, file="res/afterAll")
 allocate(x(Fs))
 allocate(res(Fs/2+1))
 do while ( i .LE. Fs )
  x(i)=cos(2*pi*t)
  CALL random_number(myRandom)
  write(19,*) t, " ", x(i)
  x(i)=x(i)+myRandom
  write(21,*) t, " ", x(i)
  t=t+diff
  i=i+1
 end do
 fftw_plan=fftw_plan_dft_r2c_1d(size(x), x, res,FFTW_ESTIMATE+FFTW_UNALIGNED)
 call fftw_execute_dft_r2c(fftw_plan, x, res)
 do i=1,Fs/2+1
  write(22,*) i, " ", abs(res(i))
  if(abs(res(i))<50) then
   res(i)=0.0
  end if
  write(20,*) i, " ", abs(res(i))
 end do
 fftw_plan2 = fftw_plan_dft_c2r_1d(size(x), res, x, FFTW_ESTIMATE+FFTW_UNALIGNED)
 call fftw_execute_dft_c2r(fftw_plan2, res, x)
 t=0.0
 i=1
 do while ( i .LE. Fs )
  write(23,*) t, " ", x(i)/Fs
  t=t+diff
  i=i+1
 end do
 if(allocated(x)) deallocate(x)
 if(allocated(res)) deallocate(res)
 call fftw_destroy_plan(fftw_plan)
 call fftw_destroy_plan(fftw_plan2)
 close(19)
 close(20)
 close(21)
 close(22)
 close(23)
end program main
