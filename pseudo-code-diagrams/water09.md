## Between min and max

### 1. Reference Documentation :

[Ruby Programming Language](https://www.ruby-lang.org/en/)

### 2. Specs :

>  Create a program that displays all values between two numbers<br> in ascending order. Min included, max excluded.
>
>  Display error and exit the program in case of argument problems.

Language: **Ruby**

Exec Command in Shell:

```
ruby script.rb <number1> <number2>
```

Expected result :

The program should display all values between the two input numbers in ascending order.

Examples of use:

```
$> ruby script.rb 20 25
20 21 22 23 24
$>
```
```
$> ruby script.rb 25 20
20 21 22 23 24
$>
```
```
$> ruby script.rb hello
error
$>
```

### 3. Algo :

1. Define a display_values function that takes two integer arguments, min and max, and prints the values between them in ascending order.
2. Define a manual_sort function that takes two integer arguments, a and b, and returns a sorted array.
3. Check if the input arguments are valid integers. If not, print "error" and exit the program.
4. Call the manual_sort function with the input arguments to get the sorted values and assign them to min and max.
5. Call the display_values function with the sorted min and max values.


### 4. Steps :

1. Define a 'display_values' function that takes 'min' and 'max' as arguments and prints the values between them.
2. Define a 'manual_sort' function that takes two numbers as arguments, and returns the sorted numbers.
3. Check if the input arguments are valid (two numbers). If not, print an error message and exit the program.
4. Call the 'manual_sort' function with input arguments.
5. Call the 'display_values' function with the sorted numbers.

### 5. Diagram

```
Start
 |
 |__ Get input from user
 | 
 |__ Define 'display_values' function
 |
 |__ Define 'manual_sort' function
 |
 |__ Check input arguments
 |      |
 |      |__ If not valid, print "error" & exit
 |
 |__ Call 'manual_sort' function
 |
 |__ Call 'display_values' function
 | 
End
```

### 6. Pseudo-code

```
BEGIN
    FUNCTION display_values(min, max)
        FOR n in range(min, max) DO
            PRINT n
        END FOR
    END FUNCTION

    FUNCTION manual_sort(a, b)
        IF a < b THEN
            RETURN [a, b]
        ELSE
            RETURN [b, a]
        END IF
    END FUNCTION

    IF ARGV.length != 2 || !ARGV.all?(/^\d+$/) THEN
        PRINT "error"
        EXIT 1
    END IF

    min, max = manual_sort(ARGV[0].to_i, ARGV[1].to_i)
    display_values(min, max)
END
```

### 7. Notation

Big O (worst case complexity algo) :

  - Time complexity : O(n), where n is the difference between min and max.
  - Space complexity : O(1), constant space as there are no data structures used to store values.

Omega (Ω-notation, best case complexity algo) :

  - Omega notation for this code is Ω(n), as the best case also requires iterating through the range.

### 8. Regex :

The regular expression ^\d+$ is a pattern that matches an input string that contains only a positive integer number. The regular expression is made up of the following components:

```
^:  Matches the start of the input string.

\d+: Matches one or more digits.
     This is the actual integer value.

$:  Matches the end of the input string.
```
