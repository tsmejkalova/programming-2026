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



tereza@ronaldo:/mnt/c/homework$ gfortran safe_factorial.f90 -o safe_factorial
tereza@ronaldo:/mnt/c/homework$ ./safe_factorial
 Enter number to calculate factorial (or -1 to exit):
8
 Factorial of           8 is       40320
 Enter number to calculate factorial (or -1 to exit):
1
 Factorial of           1 is           1
 Enter number to calculate factorial (or -1 to exit):
0
 Factorial of           0 is           1
 Enter number to calculate factorial (or -1 to exit):
-5
 Invalid choice. Please enter a non-negative integer or -1 to exit.
 Enter number to calculate factorial (or -1 to exit):
-1
 Exiting program.

 imput          expected outcome                                    real outcome
 1              1 -> program asks for another number                 1 -> program asks for another number 
 0              1 -> program asks for another number                 1 -> program asks for another number 
 negative n.    "Invalid choice. Please enter a non-negative integer or -1 to exit.
 Enter number to calculate factorial (or -1 to exit):"      "Invalid choice. Please enter a non-negative integer or -1 to exit.
 Enter number to calculate factorial (or -1 to exit):"
 -1             Exiting program.                                    Exiting program.
