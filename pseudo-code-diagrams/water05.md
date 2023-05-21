### 1. Reference Documentation:

Ruby Programming Language String Manipulation

### 2. Specs:

Create a program that determines if a string is inside another string.

Display error and exit the program in case of argument problems.


Language: Ruby

Exec Command in Shell:

```
ruby exo.rb <string1> <string2>
```

Examples of use:

```
$> ruby exo.rb hello day
true
```

```
$> ruby exo.rb hello day
false
```

```
$> ruby exo.rb 42
error
```

### 3. Algo:

The algorithm to check if a string is inside another string is to iterate through the characters of the first string and compare them with the characters of the second string. If a match is found, a slice of the first string is compared with the second string. The algorithm returns true if the slice is equal to the second string, and false otherwise.

Here's a step-by-step explanation of the code:
1.  Define a function manual_include that takes two arguments: str1 and str2.
2.  Return false if any of the input strings are nil, empty, or have a length of 0.
3.  Convert the input strings to arrays of characters.
4.  Iterate through the characters of the first string with their index.
5.  If a character matches the first character of the second string and the remaining length of the first string is sufficient to contain the second string, take a slice of the first string of the same length as the second string.
6.  Compare the slice with the second string. If they are equal, return true.
7.  If the loop finishes without finding a match, return false.

### 4. Steps:

1.  Define a manual_include function that takes two string arguments, str1 and str2.
2.  Check if the correct number of arguments are provided. If not, print an error message and exit the program.
3.  Assign the command line arguments to variables str1 and str2.
4.  Call the manual_include function with str1 and str2 as arguments.
5.  Print the result.

### 5. Diagrams:

```
Start
 |
 |__ Define 'manual_include' function
 |      |
 |      Validate input strings
 |      |
 |      Convert input strings to arrays of characters
 |      |
 |      Iterate through the characters of the first string
 |      |   |
 |      |   |__ If a character matches the first character
 |      |   |   of the second string
 |      |   |   and the remaining length of
 |      |   |   the first string is sufficient,
 |      |   |   take a slice of the first string
 |      |   |
 |      |   |__ Compare the slice with the second string
 |      |       |
 |      |       |__ If they are equal, return true
 |      |
 |      Return false
 |
 |
 |__ Check the correct number of arguments
 |      |
 |      |__ If incorrect, print an error message & exit
 |
 |__ Assign command line arguments to variables
 |
 |__ Call 'manual_include' function with 'str1' and 'str2'
 |
 |__ Print the result
 | 
End
```

### 6. Pseudo-code:

```
BEGIN
    FUNCTION manual_include(str1, str2)
        RETURN false IF str1.nil? OR str2.nil? OR str1.empty? OR str2.empty?

        str1_chars = str1.chars
        str2_chars = str2.chars
        str2_len = str2_chars.length

        FOR EACH char, index IN str1_chars
            IF char == str2_chars[0] AND (index + str2_len - 1) < str1_chars.length
                slice = str1_chars[index, str2_len]
                RETURN true IF slice == str2_chars
            END IF
        END FOR

        RETURN false
    END FUNCTION

    IF ARGV.count != 2
        PRINT "error"
        EXIT(1)
    END IF

    str1, str2 = ARGV

    result = manual_include(str1, str2)

    PRINT result
END
```
