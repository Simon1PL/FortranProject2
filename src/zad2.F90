program main
	use naivemath
	use bettermath
	use dotmath
	implicit none
	real(kind=4), allocatable, dimension(:,:) :: akind4, bkind4, res4
	real(kind=8), allocatable, dimension(:,:) :: akind8, bkind8, res8
	real(kind=16), allocatable, dimension(:,:) :: akind16, bkind16, res16
	real :: start, endd
	integer :: i, seed(12)
	seed=time()
	call random_seed(put=seed)
	open(unit=19, file="..\res\res4naive")
	open(unit=20, file="..\res\res4better")
	open(unit=21, file="..\res\res4dot")
	open(unit=22, file="..\res\res4matmul")
	open(unit=23, file="..\res\res8naive")
	open(unit=24, file="..\res\res8better")
	open(unit=25, file="..\res\res8dot")
	open(unit=26, file="..\res\res8matmul")
	open(unit=27, file="..\res\res16naive")
	open(unit=28, file="..\res\res16better")
	open(unit=29, file="..\res\res16dot")
	open(unit=30, file="..\res\res16matmul")
	!akind4=reshape([1,2,1,3,1,2],[3,2])
	!bkind4=reshape([2,3,3,4,1,4,2,5],[2,4])
	i=10
	do while ( i .LE. 1280 )
		!kind4
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
		!kind8
		allocate (akind8(i,i))
		allocate (bkind8(i,i))
		CALL RANDOM_NUMBER(akind8)
		CALL RANDOM_NUMBER(bkind8)
		call cpu_time(start)
		res8=naivmull(akind8,bkind8)
		call cpu_time(endd)
		write (23,*) i, endd-start
		call cpu_time(start)
		res8=bettmull(akind8,bkind8)
		call cpu_time(endd)
		write (24,*) i, endd-start
		call cpu_time(start)
		res8=dotmull(akind8,bkind8)
		call cpu_time(endd)
		write (25,*) i, endd-start
		call cpu_time(start)
		res8=matmul(akind8, bkind8)
		call cpu_time(endd)
		write (26,*) i, endd-start
		if(allocated(akind8)) deallocate(akind8)
		if(allocated(bkind8)) deallocate(bkind8)
		!kind16
		allocate (akind16(i,i))
		allocate (bkind16(i,i))
		CALL RANDOM_NUMBER(akind16)
		CALL RANDOM_NUMBER(bkind16)
		call cpu_time(start)
		res16=naivmull(akind16,bkind16)
		call cpu_time(endd)
		write (27,*) i, endd-start
		call cpu_time(start)
		res16=bettmull(akind16,bkind16)
		call cpu_time(endd)
		write (28,*) i, endd-start
		call cpu_time(start)
		res16=dotmull(akind16,bkind16)
		call cpu_time(endd)
		write (29,*) i, endd-start
		call cpu_time(start)
		res16=matmul(akind16, bkind16)
		call cpu_time(endd)
		write (30,*) i, endd-start
		if(allocated(akind16)) deallocate(akind16)
		if(allocated(bkind16)) deallocate(bkind16)
		i=2*i
	end do
end program main