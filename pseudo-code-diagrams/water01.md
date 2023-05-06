## Generate all unique two-digit combinations

### 1\. Reference Documentation :

[Ruby Programming Language](https://www.ruby-lang.org/en/)

### 2\. Specs :

> display all the different combinations<br>
> of two numbers between 00 and 99<br>
> in ascending order.

 example :
 ```
 $> ruby exo.rb
 00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99
 $>
```

Language: **Ruby**

Exec Command in Shell: ```ruby script.rb```

Examples:

```
"$> ruby exo.py" "Hello 36"
Hello 36
```

### 3\. Algo :

The algorithm loops through all numbers from 0 to 98 for the first digit, and for each of these numbers, it loops through all numbers from the current first digit + 1 to 99 for the second digit. This way, it generates all unique combinations of two-digit numbers.

### 4\. Steps :

1.  Initialize an empty array for storing valid combinations.
2.  Loop through all numbers from 0 to 98 for the first digit.
3.  For each first digit, loop through all numbers from the first digit + 1 to 99 for the second digit.
4.  Format the combination as a string with two-digit numbers separated by a space.
5.  Add the formatted combination to the array.
6.  Join the combinations array into a single string with comma-separated values.
7.  Print the result.

### 5\. Diagrams :

```
Start
 |
 |__ Initialize empty array for combinations
 |
 |__ Loop through numbers 0 to 98 for the first digit
 |       |
 |       |__ Loop through numbers (first digit + 1) to 99
 |           for the second digit
 |              |
 |              |__ Format the combination as a string
 |              |
 |              |__ Add the combination to the array
 |
 |__ Join the combinations array into a single string
 |   with comma-separated values
 |
 |__ Print the result
 | 
End

```

```
    +-------+
    | Input |
    +-------+
        |
        V
+-----------------------------------------+
| Initialize empty array for combinations |
+-----------------------------------------+
        |
        V
+------------------------------+
| Loop through numbers 0 to 98 |
| for the first digit          |
+------------------------------+
        |       |
        |       V
        |    +-----------------------------------+
        |    | Loop through numbers (first digit |
        |    | + 1) to 99 for the second digit   |
        |    +-----------------------------------+
        |              |
        |              V
        |           +------------------------+
        |           | Format the combination |
        |           | as a string            |
        |           +------------------------+
        |              |
        |              V
        |           +---------------------+
        |           | Add the combination |
        |           | to the array        |
        |           +---------------------+
        |
        V
+-------------------------------------------+
| Join the combinations array into a single |
| string with comma-separated values        |
+-------------------------------------------+
        |
        V
+--------------+
| Print result |
+--------------+
        |
        V
   +--------+
   | Output |
   +--------+

```

### 6\. Pseudo-code :

```
BEGIN
    combinations = []  // Initialize an empty array for storing valid combinations

    FOR i = 0 to 98
        FOR j = i+1 to 99
            combination = format("%02d %02d", i, j) // Format the combination as a string
            combinations << combination // Add the combination to the array
        END FOR
    END FOR

    result = combinations.join(", ") // Join the combinations array into a single string with comma-separated values
    PRINT result // Print the result
END

```

### 7\. Notation :

Big O (worst-case complexity algo) :

-   Time complexity : **O(n^2)**
    
-   Space complexity : **O(n^2)**
    

Omega (Ω-notation, best-case complexity algo) :

-   Omega notation for this code is **Ω(n^2)**

___