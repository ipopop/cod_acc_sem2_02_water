## Display received arguments in reverse

### 1. Reference Documentation :

Ruby Programming Language

### 2. Specs :

> Display the received arguments in reverse.
>
> Display "Error" & exit the program
> in case of argument problem.

Examples:

```
"$> ruby exo.rb" "Am" "I" "Funny"
Funny
I
Am
```

```
"$> ruby exo.rb" ha ho
ho
ha
```

```
"$> ruby exo.rb" "Hello 36"
Hello 36
```

Language: **Ruby**

Exec Command in Shell: ```ruby script.rb```

Example of use:
```
$> ruby script.rb arg1 arg2 arg3
arg3
arg2
arg1
$>
```
### 3. Algo :

The algorithm checks if there are any command-line arguments provided. If there are, it reverses the arguments and prints them. If no arguments are provided, it displays an error message and exits the program.

### 4. Steps :

1. Check if there are any command-line arguments.
2. If there are arguments, reverse and print them.
3. If there are no arguments, display an erro
4. message and exit the program.

### 5. Diagrams :

```
Start
 |
 |__ Check if there are any command-line arguments
 |       |
 |       |__ If there are arguments
 |       |       |
 |       |       |__ Reverse and print the arguments
 |       |
 |       |__ If there are no arguments
 |               |
 |               |__ Display error message and exit
 | 
End
```

```
    +-------+
    | Input |
    +-------+
        |
        V
+-------------------------------------+
| Check if there are any command-line |
| arguments                           |
+-------------------------------------+
        |       |
        |       V
        |   +------------------------+
        |   | If there are arguments |
        |   +------------------------+
        |       |
        |       V
        |    +-----------------------+
        |    | Reverse and print the |
        |    | arguments             |
        |    +-----------------------+
        |
        V
+---------------------------+
| If there are no arguments |
+---------------------------+
        |
        V
+-----------------------+
| Display error message |
| and exit              |
+-----------------------+
        |
        V
   +--------+
   | Output |
   +--------+
```

### 6. Pseudo-code :

```
BEGIN
    IF ARGV.length > 0
        PRINT ARGV.reverse : ARRAY<STRING>
    ELSE
        PRINT "Error"
        EXIT
    END IF
END
```

### 7. Notation :

Big O (worst-case complexity algo) :

    Time complexity : O(n)

    Space complexity : O(n)

Omega (Ω-notation, best-case complexity algo) :

    Omega notation for this code is Ω(n)
