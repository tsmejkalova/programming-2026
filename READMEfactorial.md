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

this program counts factorial from user's imput and prints out the result.

tereza@ronaldo:/mnt/c/homework$ ./factorial
 Enter a non-negative integer n:
0
 The factorial of           0 is:           1
tereza@ronaldo:/mnt/c/homework$ ./factorial
 Enter a non-negative integer n:
5
 The factorial of           5 is:         120
tereza@ronaldo:/mnt/c/homework$ ./factorial
 Enter a non-negative integer n:
-8
 That is not a non-negative integer.

imput    expected outcome                                  real outcome
0        The factorial of           0 is:           1      The factorial of           0 is:           1   
5        The factorial of           5 is:         120      The factorial of           5 is:         120
-8       That is not a non-negative integer. (stops)       That is not a non-negative integer. (stops)
