program greeting
    implicit none
    character(len=40) :: name
    print *, "Enter your name:"
    read *, name
    print *, "Greetings, ", trim(name), "!"


end program greeting

this program takes your imput - up to 40 characters, and prints out a greeting for you
the trim function is used to not have too many spaces before or after name

tereza@ronaldo:/mnt/c/homework$ gfortran greeting.f90 -o greeting
tereza@ronaldo:/mnt/c/homework$ ./greeting
 Enter your name:
Tereza
 Greetings, Tereza!
tereza@ronaldo:/mnt/c/homework$ ./greeting
 Enter your name:
             Tereza                    
 Greetings, Tereza!
tereza@ronaldo:/mnt/c/homework$ ./greeting
 Enter your name:
4561
 Greetings, 4561!


imput                               expected outcome                  real outcome
Tereza                              Greetings, Tereza!                Greetings, Tereza!
            Tereza                  Greetings, Tereza!                Greetings, Tereza!  
  <- lots of spaces
4561                                Greetings, 4561!                  Greetings,4561!                                      
