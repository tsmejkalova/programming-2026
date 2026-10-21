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

tereza@ronaldo:/mnt/c/homework$ gfortran temp_converter.f90 -o temp_converter
tereza@ronaldo:/mnt/c/homework$ ./temp_converter
 To convert from Celsius to Fahrenheit enter 1, Fahrenheit to Celsius enter 2, to exit enter 0:
6
 Invalid choice. Please enter '1', '2', or '0'.
 To convert from Celsius to Fahrenheit enter 1, Fahrenheit to Celsius enter 2, to exit enter 0:
1
 Enter temperature in Celsius:
12
   12.0000000     Celsius is   53.5999985     Fahrenheit.
 To convert from Celsius to Fahrenheit enter 1, Fahrenheit to Celsius enter 2, to exit enter 0:
2
 Enter temperature in Fahrenheit:
54
   54.0000000     Fahrenheit is   12.2222223     Celsius.
 To convert from Celsius to Fahrenheit enter 1, Fahrenheit to Celsius enter 2, to exit enter 0:
0
 Exiting program.

 imput          expected outcome                    real outcome
 6              Invalid choice. try again..         Invalid choice. try again..
 1 -> 12        Enter temperature in Celsius: ->    same
                ->  12.0000000     Celsius is   53.5999985     Fahrenheit.       
2 -> 54         Enter temperature in Fahrenheit:
                -> 54.0000000     Fahrenheit is   12.2222223     Celsius.

after each conversion, it asks us again to choose what type of conversion we want to do next, only way to stop program is to type 0 as an answer                    
