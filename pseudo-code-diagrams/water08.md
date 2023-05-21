## Numbers only

### 1. Reference Documentation :
[Ruby Programming Language](https://www.ruby-lang.org/en/)<br>


### 2. Specs :

> Create a program that determines<br>
> if a string contains only numbers.
>
> Display error and exit the program<br>
> in case of argument problems.

Examples of use:

```
$> ruby exo.rb "4445353"
true
```
```
$> ruby exo.rb 42
true
```
```
$> ruby exo.rb "Hello 36"
false
```

### 3. Algo

The algorithm checks if each character in the input string is a digit or decimal point. It also allows for a single leading negative sign. The algorithm sets a flag when it encounters a decimal point to ensure that only one decimal point is allowed in the input string. If any character other than a digit or decimal point is encountered, it returns false. If all characters in the input string are digits or a single decimal point, it returns true.

### 4. Steps

1.  Check that exactly one argument has been passed to the program, otherwise print an error message and exit with an error code.
2.  Get the input string from the first argument.
3.  Define the is_numeric? function.
4.  Initialize a decimal_point_encountered variable to false.
5.  Iterate through each character in the input string using a loop.
6.  Check if the current character is the first character and a minus sign, if so skip to the next iteration of the loop.
7.  If the current character is a decimal point or comma, and decimal_point_encountered is false, set decimal_point_encountered to true and skip to the next iteration of the loop.
8.  If the current character is not a digit, return false.
9.  If the loop completes without returning false, return true.
10. Call the is_numeric? function with the input string as an argument.
11. Print the result of the is_numeric? function.
12. Exit the program.


### 5. Diagrams :

```
Start
 |
 |__ Check argument count
 |
 |__ Get input from user
 |
 |__ Define 'is_numeric?' function
 |      |
 |      Initialize 'decimal_point_encountered' to false
 |      Iterate through each character of the string
 |      |
 |      |__ Check if the current character
 |      |   is a minus sign at the first position
 |      |
 |      |__ Check if the current character
 |      |   is a decimal point or comma
 |      |    |
 |      |    Set 'decimal_point_encountered' to true
 |      |    and skip to the next character
 |      |
 |      |__ Check if the current character is a digit
 |           |
 |           Return false if it's not
 |
 |__ Call 'is_numeric?' function with input
 |
 |__ Print the result
 | 
End
```

### 6. Pseudo-code :

```
BEGIN
    FUNCTION is_numeric?(str)
        SET decimal_point_encountered to false

        FOR each character char and its index in str DO
            IF index is 0 AND char is '-'
                CONTINUE to the next iteration
            ELSE IF char is '.' OR char is ',' AND decimal_point_encountered is false
                SET decimal_point_encountered to true
                CONTINUE to the next iteration
            END IF
            IF char does not match a digit
                RETURN false
            END IF
        END FOR

        RETURN true
    END FUNCTION

    SET arg to the value of ARGV

    IF the length of arg is not 1
        PRINT "Error: Please provide exactly one argument."
        EXIT with error code 1
    END IF

    SET input_str to the first element in arg converted to a string

    PRINT the result of calling is_numeric? with input_str
END
```

### 7. Notation :

Big O <em>(worst case complexity algo)</em> :

  - Time complexity : <b>O(n)</b> where n is the length of the input string.

  - Space complexity : <b>O(1)</b>

Omega (Ω-notation <em>best case complexity algo)</em> :

  - Omega notation for this code is also <b>Ω(n)</b> since in the best case scenario we still need to iterate through the entire input string to determine if it is numeric or not.