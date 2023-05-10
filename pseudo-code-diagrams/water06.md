## Capitalize Every Other Letter

### 1. Reference Documentation

[Ruby Programming Language](https://www.ruby-lang.org/en/)

### 2. Specs

> Create a program that capitalizes
> every other letter in a string.
>
> Only the letters (A-Z, a-z) are taken into account.
>
> Display error and exit the program in case of argument problems.

Language: <b>Ruby</b>

- Exec Command in Shell:

```
ruby script.rb <string>
```

- Expected result:

  The program should output the string with every other letter capitalized.

- Examples of use:

```
$> python exo.py "Hello world!"
HeLlO wOrLd !
```
```
$> python exo.py 42
error
```

### 3. Algo

The algorithm used to capitalize every other letter in a string is very simple. Iterate through the string, and for every other character, capitalize it.

### 4. Steps

1.  Initialize the input string.
2.  Define a 'capitalize_every_other_letter' function that takes a string argument and returns the modified string.
3.  Check if the input argument is a string. If it's not, print an error message and exit the program.
4.  Use the 'capitalize_every_other_letter' function with the input argument.
5.  Print the output.

### 5. Pseudo-code

```
BEGIN
    FUNCTION capitalize_every_other_letter(input)
        IF input.match?(/\A\d+\z/) THEN
            RETURN "error"
        END IF

        modified_string = ""
        input.each_char do |char|
            if /[a-zA-Z]/.match(char)
                modified_string << (char == char.upcase ? char.downcase : char.upcase)
            else
                modified_string << char
            end
        end

        RETURN modified_string
    END FUNCTION

    IF ARGV.length != 1 || !ARGV[0].match?(/\A-?\d+\z/) THEN
        PRINT "Error: incorrect input format provided"
    ELSE
        input = ARGV[0]
        PRINT capitalize_every_other_letter(input)
    END IF
END
```

### 6. Diagrams

```
Start
 |
 |__ Get input from user
 | 
 |__ Initialize input string
 |
 |__ Define 'capitalize_every_other_letter' function
 |      |
 |      Check if input is a string
 |      |   |
 |      |   |__ If not, print an error message & exit
 |      |
 |      Use the 'capitalize_every_other_letter' function
 |      with the input argument
 |
 |__ Call 'capitalize_every_other_letter' function with input
 |
 |__ Print the result
 | 
End
```