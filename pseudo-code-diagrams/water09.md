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

The algorithm takes two integer arguments, num1 and num2, and first validates if they are both integers.

If not, it prints an error message and terminates the program.

After validation, it ensures that num1 is less than or equal to num2 by swapping their values if necessary.

Finally, the algorithm iterates through the range from num1 (inclusive) to num2 (exclusive) and prints each number, followed by a newline.


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
    FUNCTION display_values(min : INT, max : INT)
        FOR n : INT in range(min, max) DO
            PRINT n
        END FOR
    END FUNCTION

    FUNCTION manual_sort(a : INT, b : INT) : ARRAY<INT>
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
