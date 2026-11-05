program vector_stats
    implicit none
    real, dimension(:), allocatable :: v
    integer :: n, i
do
    print *, "How many readings (1 to 20)?"
    read *, n
    if (n >= 1 .and. n <=20) exit
    print *, "Choose a length between 1 and 20"
end do

    allocate(v(n))

    do i = 1, ubound(v, 1)
        print *, "Reading", i
        read *, v(i)
    end do 

print *, "Minimum:", minval(v)
print *, "Maximum:", maxval(v)
print *, "Mean:", meanof(v)
print *, "First maximum at:", maxloc(v, dim=1)

deallocate(v)

contains
real function meanof(x) result(average)
    implicit none
    real, dimension(:), intent(in) :: x
    average = sum(x) / size(x)
end function meanof
end program vector_stats