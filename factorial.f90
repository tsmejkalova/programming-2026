program factorial
    implicit none
    integer :: n, result, i
    print *, "Enter a non-negative integer n:"
    read *, n
    if (n<0) then
        print *, "That is not a non-negative integer."
    else
        result = 1
        do i = 1, n
            result = result * i
        end do
        print *, "The factorial of", n, "is:", result
    end if
end program factorial