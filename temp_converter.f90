program temp_converter
    implicit none
    real :: celsius, fahrenheit
    integer :: choice
    do
        print *, "To convert from Celsius to Fahrenheit enter 1, Fahrenheit to Celsius enter 2, to exit enter 0:"
        read *, choice
        if (choice == 1) then
            print *, "Enter temperature in Celsius:"
            read *, celsius
            fahrenheit = (celsius * 9.0 / 5.0) + 32.0
            print *, celsius, "Celsius is", fahrenheit, "Fahrenheit."
        else if (choice == 2) then
            print *, "Enter temperature in Fahrenheit:"
            read *, fahrenheit
            celsius = (fahrenheit - 32.0) * 5.0 / 9.0
            print *, fahrenheit, "Fahrenheit is", celsius, "Celsius."
        else if (choice == 0) then
            print *, "Exiting program."
            exit
        else
            print *, "Invalid choice. Please enter '1', '2', or '0'."
        end if
    end do
end program temp_converter