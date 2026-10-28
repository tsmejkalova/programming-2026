program sumsum
    implicit none
    integer :: n

    do
        print *, "Size 1 to 5; 0 to exit: "
        read *, n
        if (n == 0) exit
        if (n >= 1 .and. n <= 5) then
            call print_squares(n)
        else
            print *, "Out of range"
        end if
    end do

    contains
        subroutine print_squares(size)
            implicit none
            integer, intent(in) :: size
            integer :: i, j
            do i = 1, size
                do j = 1, size
                    print *, i, j, sum_of_squares(i, j)
                end do
            end do
        end subroutine print_squares

        integer function sum_of_squares(a, b) result(value)
            implicit none
            integer, intent(in) :: a, b
            value = (a**2) +  (b**2)
        end function sum_of_squares

end program sumsum