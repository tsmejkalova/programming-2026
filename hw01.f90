
program vector_statistics
implicit none

real, dimension(:), allocatable :: v
integer :: n, i, count
real :: avg

do
    print *, "Choose how many readings from 1 to 20?"
    read *, n
    if (n >= 1 .and. n <= 20) exit
    print *, "Choose a length from 1 to 20."
end do

allocate(v(n))

do i = 1, n
    print *, "Enter a value:"
    read *, v(i)
end do

avg = mean(v)

print *, "Mean:", avg

count = 0

do i = 1, n
    if (v(i) > avg) then
        print *, "Index:", i, "Value:", v(i)
        count = count + 1
    end if
end do

print *, "Number of values above mean:", count

contains

function mean(v) result(avg)
    real, dimension(:), intent(in) :: v
    real :: avg
    integer :: i

    avg = 0.0

    do i = 1, ubound(v, 1)
        avg = avg + v(i)
    end do

    avg = avg / size(v)
end function mean

end program vector_statistics
