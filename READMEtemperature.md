program temperature
    implicit none
    real :: temp_celsius, temp_fahrenheit
    print *, "Enter temperature in Celsius:"
    read *, temp_celsius
    temp_fahrenheit = (temp_celsius * 9.0 / 5.0) + 32.0
    print *, "Temperature in Fahrenheit: ", temp_fahrenheit
end program temperature

this program takes temperature in celsius and converts it to fahrenheit, then prints the result

tereza@ronaldo:/mnt/c/homework$ gfortran temperature.f90 -o temperature
tereza@ronaldo:/mnt/c/homework$ ./temperature
68
 Temperature in Fahrenheit:    154.399994    
tereza@ronaldo:/mnt/c/homework$ gfortran temperature.f90 -o temperature
tereza@ronaldo:/mnt/c/homework$ ./temperature
 Enter temperature in Celsius:
95.5
 Temperature in Fahrenheit:    203.899994    
tereza@ronaldo:/mnt/c/homework$ ./temperature
 Enter temperature in Celsius:
-13
 Temperature in Fahrenheit:    8.60000038    

 
 imput          expected outcome                                real outcome
 68             Temperature in Fahrenheit:    154.399994        Temperature in Fahrenheit:    154.399994
 95.5           Temperature in Fahrenheit:    203.899994        Temperature in Fahrenheit:    203.899994 
 -13            Temperature in Fahrenheit:    8.60000038        Temperature in Fahrenheit:    8.60000038