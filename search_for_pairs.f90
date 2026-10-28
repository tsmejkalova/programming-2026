program pairs
    implicit none
    integer :: n

    do
        print *, "Choose a number from 1 to 25; 0 to exit: "
        read *, n
        if (n == 0) exit
        if (n >= 1 .and. n <= 25) then
            call find_pairs(n)
        else
            print *, "Out of range"
        end if
    end do

    contains
        subroutine find_pairs(result)
            implicit none
            integer, intent(in) :: result
            integer :: i, j
            do i = 1, 5
                do j = 1, 5
                    if (multiply(i, j) == result) then
                        print *, "Pair found: ", i, j
                    end if
                end do
            end do
        end subroutine find_pairs

        integer function multiply(a, b) result(value)
            implicit none
            integer, intent(in) :: a, b
            value = a * b
        end function multiply

end program pairs