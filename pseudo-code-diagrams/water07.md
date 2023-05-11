## Capitalize Words in a Sentence

### 1. Reference Documentation :

[Ruby Programming Language](https://www.ruby-lang.org/en/)

### 2. Specs :

    Create a program that takes a string input and capitalizes the first letter of each word in the sentence.

    Display "error" if the input is not a string or is empty.

Language: <b>Ruby</b>

Exec Command in Shell:

```
ruby capitalize.rb <input_string>
```

Expected result :

The program should output the input string with the first letter of each word capitalized.

Examples of use:

```
$> ruby capitalize.rb "hello mathilde, how are you?!"
Hello Mathilde, How Are You?!
```

```
$> ruby capitalize.rb 42
error
```

### 3. Algo :

The algorithm takes an input string and processes each character, capitalizing the first letter of each word and leaving other characters as they are.
### 4. Steps :

1.  Define a 'capitalize_words' function that takes a string argument 'input'.
2.  Initialize an array 'chars' containing characters of the input string.
3.  Initialize a boolean variable 'word_start' as true.
4.  Initialize an empty array 'result'.
5.  Loop through each character in 'chars'.
    If the character is a letter:
    -  Add the character to the result array.
    -  If 'word_start' is true, capitalize the character.
    -  If 'word_start' is false, keep the character as is.
    -  Set 'word_start' to false.
    If the character is not a letter:
    -  Add the character to the result array.
    -  Set 'word_start' to true.
6.  Join the result array to form the output string.
7.  Check if the input argument is a string or empty. If it's not, print an error message and exit the program.
8.  Call the 'capitalize_words' function with the input argument.
9.  Print the output.

### 5. Pseudo-code :

```
BEGIN
    FUNCTION capitalize_words(input)
        chars = input.chars
        word_start = true
        result = []

        FOR EACH char in chars
            IF char is a letter
                result << (word_start ? char.upcase : char.downcase)
                word_start = false
            ELSE
                result << char
                word_start = true
            END IF
        END FOR

        RETURN result.join
    END FUNCTION

    IF ARGV.empty? || ARGV[0].to_s.to_i.to_s == ARGV[0].to_s THEN
        PRINT "error"
    ELSE
        input = ARGV[0].to_s
        PRINT capitalize_words(input)
    END IF
END
```

### 6. Diagram :

```
Start
 |
 |__ Get input from user
 | 
 |__ Define 'capitalize_words' function
 |      |
 |      Split input string into characters
 |      |   |
 |      |   |__ If char is a letter
 |      |   |   |
 |      |   |   |__ If word_start is true, capitalize char
 |      |   |   |__ If word_start is false, downcase char
 |      |   |   |__ Add char to result
 |      |   |   |__ Set word_start to false
 |      |   |
 |      |   |__ If char is not a letter
 |      |   |   |
 |      |   |   |__ Add char to result
 |      |   |   |__ Set word_start to true
 |      |   |
 |      END IF
 |      |
 |      END FOR
 |      |
 |      Join result array to form output string
 | 
 |__ Check if input is a string or empty
 |      |
 |      |__ If not, print an error message and exit
 | 
 |__ Call 'capitalize_words' function with input
 |
 |__ Print the output
 | 
End
```

### 7. Notation :

Big O <em>(worst case complexity algo)</em> :

  -  Time complexity : <b>O(n)</b>

  -  Space complexity : <b>O(n)</b>

Omega (Ω-notation <em>best case complexity algo)</em> :

  -  Omega notation for this code is also <b>Ω(n)</b>
