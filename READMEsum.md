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

tereza@ronaldo:/mnt/c/homework$ gfortran sum.f90 -o sum
tereza@ronaldo:/mnt/c/homework$ ./sum
 Enter a positive integer n:
0
 That is not a positive integer.
tereza@ronaldo:/mnt/c/homework$ ./sum
 Enter a positive integer n:
-9
 That is not a positive integer.
tereza@ronaldo:/mnt/c/homework$ ./sum
 Enter a positive integer n:
18
 The sum of the first          18 positive integers is:         171

 this program works for positive integers only, it takes the number user gives it - n. and then sums up 1 + 2 + ... + n and gives the result. if user tries to give the program non-positive integer (zero or negative number), program stops

 
 imput          expected outcome                                    real outcome
 0              That is not a positive integer. -> program stops    That is not a positive integer.->program stops
-9              That is not a positive integer. -> program stops    That is not a positive integer.->program stops
18              The sum of the first 18 positive integers is:171    The sum of the first 18 positive integers is:171


