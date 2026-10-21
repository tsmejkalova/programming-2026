program sum
    implicit none
    integer :: i, n, total
    total = 0
    print *, "Enter a positive integer n:"
    read *, n
    if (n <= 0) then
        print *, "That is not a positive integer."
    else
        do i = 1, n
            total = total + i
        end do
        print *, "The sum of the first", n, "positive integers is:", total
    end if

end program sum