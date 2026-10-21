program temperature
    implicit none
    real :: temp_celsius, temp_fahrenheit
    print *, "Enter temperature in Celsius:"
    read *, temp_celsius
    temp_fahrenheit = (temp_celsius * 9.0 / 5.0) + 32.0
    print *, "Temperature in Fahrenheit: ", temp_fahrenheit
end program temperature

