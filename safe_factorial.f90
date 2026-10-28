program safe_factorial
    implicit none
    integer :: choice, result, i
    do
        print *, "Enter number to calculate factorial (or -1 to exit):"
        read *, choice
        if (choice >= 0) then
            result = 1
            do i = 1, choice
                result = result * i
            end do
            print *, "Factorial of", choice, "is", result
        else if (choice == -1) then
            print *, "Exiting program."
            exit
        else
            print *, "Invalid choice. Please enter a non-negative integer or -1 to exit."
        end if
    end do
end program safe_factorial