
program totals
implicit none

integer, dimension(:,:), allocatable :: a
integer :: n, m, i, j

do
    print *, "Choose how many rows from 1 to 5?"
    read *, n
    if (n >= 1 .and. n <= 5) exit
    print *, "Choose a number of rows from 1 to 5."
end do

do
    print *, "Choose how many columns from 1 to 5?"
    read *, m
    if (m >= 1 .and. m <= 5) exit
    print *, "Choose a number of columns from 1 to 5."
end do

allocate(a(n,m))

do i = 1, n
    do j = 1, m
        a(i,j) = i * j
    end do
end do

call print_rows(a)

contains

subroutine print_rows(a)
    integer, dimension(:,:), intent(in) :: a
    integer :: i

    do i = 1, ubound(a, 1)
        print *, a(i,:), "Sum:", sum(a(i,:))
    end do

end subroutine print_rows

end program totals