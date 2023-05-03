##### Specs :

> display all the different combinations
> of two numbers between 00 and 99
> in ascending order.
>
> example :
> $> ruby exo.rb
> 00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99
> $>

##### Steps:

    Loop through all numbers from 0 to 98 for the first number.
    Loop through all numbers from the next number to 99 for the second number.
    Format the combination of two numbers as a string.
    Add the formatted string to a results array.
    Join the results array into a single string with comma-separated values.
    Print the results string.

##### Pseudo-code:

```
BEGIN
    SET results = []

    FOR i FROM 0 TO 98
        FOR j FROM i+1 TO 99
            SET combination = FORMAT("%02d %02d", i, j)
            ADD combination TO results
        END FOR
    END FOR

    SET results_string = JOIN results WITH ", "
    PRINT results_string
END
```

##### Diagrams :

```
Start
 |
 |__ __ Initialize an empty array to store the results
        |
        |
        Loop through all numbers from 0 to 98 for the first number
            |
            Loop through all numbers from the next number to 99 for the second number
                |
                Format the combination of two numbers as a string
                |
                Add the formatted string to the results array
                |
                |
        Join the results array into a single string with comma-separated values
        |
        Print the results string
  __ __ |
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+------------------+
| Initialize empty |
| results array    |
+------------------+
         |
         V
  +--------------+
  | Loop through |
  | numbers from |
  | 0 to 98 for  |---+
  | first num.   |   |
  +--------------+   |
                     V
              +--------------+
              | Loop through |
              | numbers from |
              | next num to  |
              | 99 for       |---+
              | second num.  |   |
              +--------------+   |
                                 v
                            +---------+    
                            | Format  |
                            | numbers |
                            | as a    |
                            | string  |
                            +---------+
                                 |
                                 V
                            +---------+
                            | Add     |
                            | string  |
                            | to      |
                            | results |
                            +---------+
+---------------------+          |
| Join results into a |          |
| single string with  |<---------+
| comma-separated     |
| values              |
+---------------------+
         |
         V
+---------------+
| Print results |
+---------------+
         |
         V
    +--------+
    | Output |
    +--------+
```