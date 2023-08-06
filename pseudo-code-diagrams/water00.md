##### Specs :

> Displays all the different possible combinations
> of three numbers in ascending order,
> in ascending order (the repetition is voluntary).
>
> Language: Ruby
>
> Exec Command in Shell: ruby eau00.rb

##### Expected result :

```
$ ruby eau00.rb
012, 013, 014, 015, 016, 017, 018, 019, 023, 024, 025, 026, 027, 028, 029, 034, 035, 036, 037, 038, 039, 045, 046, 047, 048, 049, 056, 057, 058, 059, 067, 068, 069, 078, 079, 089, 123, 124, 125, 126, 127, 128, 129, 134, 135, 136, 137, 138, 139, 145, 146, 147, 148, 149, 156, 157, 158, 159, 167, 168, 169, 178, 179, 189, 234, 235, 236, 237, 238, 239, 245, 246, 247, 248, 249, 256, 257, 258, 259, 267, 268, 269, 278, 279, 289, 345, 346, 347, 348, 349, 356, 357, 358, 359, 367, 368, 369, 378, 379, 389, 456, 457, 458, 459, 467, 468, 469, 478, 479, 489, 567, 568, 569, 578, 579, 589, 678, 679, 689, 789

$ 
```

##### Steps :

1.  Define an empty array to store the valid combinations
2.  Loop1 through all numbers from 0 to 9 for the first digit
3.  Nested loop2 through all numbers from x to 9 for the second digit
4.  Nested loop3 through all numbers from y to 9 for the third digit
5.  Check if the combination is valid: all digits must be different
6.  Check if the combination is not already in the array
7.  Add the combination to the array
8.  Format the combinations as a string
9.  Print the result

##### Pseudo-code :

```
BEGIN
    SET combinations : ARRAY<ARRAY<INT>> = empty array
    FOR i : INT in 0 to 9 DO
        FOR j : INT in i to 9 DO
            FOR k : INT in j to 9 DO
                IF i != j AND i != k AND j != k THEN
                    IF [i, j, k] not in combinations THEN
                        ADD [i, j, k] to combinations
                    END IF
                END IF
            END FOR
        END FOR
    END FOR
    SET result : STRING = format combinations as a string
    PRINT result
END

```

##### Diagrams :

```
Start
 |
 |__ Define an empty array "combinations"
 |
 |__ Loop1 through all numbers from 0 to 9 for the first digit "i"
        |
        |__ Loop2 through all numbers from "i" to 9 for the second digit "j"
               |
               |__ Loop3 through all numbers from "j" to 9 for the third digit "k"
                      |
                      |__ Check if the combination is valid: all digits must be different
                            |
                            |__ If not, skip to the next combination
                            |
                            |__ If yes, check if the combination is not already in "combinations"
                                   |
                                   |__ If not, add the combination to "combinations"
                                   |
                                   |__ If yes, skip to the next combination
                                   | 
  __ Loops end __ __ __ __ __ __ __|
 |
 |__ Format the "combinations" array as a string "result"
 |
 |__ Print "result"
 |
End

```

```
     +-------+
     | Input |
     +-------+
         |
         V
+--------------------------+
| Define empty array       |
| for storing combinations |
+--------------------------+
         |
         V
+--------------------------+
| Loop through 0 to 9 for  |
| first digit              |
+--------------------------+
             |
             V
    +-------------------------+
    | Loop through i to 9 for |
    | second digit            |
    +-------------------------+
                 |
                 V
        +-------------------------+
        | Loop through j to 9 for |
        | third digit             |
        +-------------------------+
                 |
                 V
            +--------------------------+
            | Check if combination is  |
            | valid (digits different) |
            +--------------------------+
                     |
                     V
            +-------------------------+
            | Check if combination is |
            | not already in array    |
            +-------------------------+
             |
             V
+--------------------------+
| Add combination to array |
+--------------------------+
         |
         V
+-------------------------------+
| Format combinations as string |
+-------------------------------+
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
