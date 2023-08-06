## Absolute minimum difference

### Specs

> Displays the absolute minimum difference between<br>
> two elements of an array consisting only of numbers.
> 
> Negative numbers accepted.
> 
> Display error and exit the program<br>
> in case of argument problems.

Examples of use:

```
$> ruby exo.rb 5 1 19 21
2
```
```
$> ruby exo.rb 20 5 1 19 21
1
```
```
$> ruby exo.rb -8 -6 4
2
```
```
$> ruby drafts/water11.rb
Error: Array must have at least two elements
```

### Algo:

The absolute_minimum_difference function takes an array of integers as an argument.

It iterates through the array to find the absolute minimum difference between two elements. 

The minimum difference is initialized with the difference between the first two elements.

Then, it compares this difference with the differences between all other pairs of elements and updates the minimum difference if a smaller difference is found.

Finally, it displays the minimum difference.

The function handles cases where the array has less than two elements and displays an error message in such cases.

The function is called with the command-line arguments converted to integers.

### Steps

To calculate the absolute minimum difference between two elements of an array, the following steps can be followed:

  
  - Check if the input array has at least two elements. If not, print an error message and exit the program.
  - Initialize the minimum difference with the absolute difference between the first two elements of the array.
  - Iterate through the array using nested loops to compare all possible pairs of elements.
  - Calculate the absolute difference between the current pair of elements in the nested loops.
  - Update the minimum difference if the current difference is smaller than the previously stored minimum difference.
  - Continue iterating through all possible pairs of elements.
  - After the iterations are complete, display the minimum difference.


### Pseudo-code

```
BEGIN
    FUNCTION absolute_minimum_difference(array : ARRAY<INT>)
        IF LENGTH(array) < 2 THEN
            PRINT "Error: Array must have at least two elements"
            EXIT
        END IF

        min_diff : INT = ABS(array[0] - array[1])

        FOR i : INT FROM 0 TO LENGTH(array) - 1
            FOR j : INT FROM i + 1 TO LENGTH(array) - 1
                diff : INT = ABS(array[i] - array[j])
                IF diff < min_diff THEN
                    min_diff = diff
                END IF
            END FOR
        END FOR

        PRINT min_diff
    END FUNCTION

    # Get the command-line arguments excluding the script name
    args: ARRAY<STRING> = ARGV

    # Convert arguments to integers
    int_args: ARRAY<INT> = args.map(&:to_i)

    # Call the function with the command-line arguments
    absolute_minimum_difference(int_args)
END
```

### Notation

Let's analyze the time and space complexity of the absolute_minimum_difference function.

  - Time complexity: O(n^2)<br>
     The nested loops iterate through all possible pairs of elements, resulting in a time complexity of O(n^2), where n is the length of the input array. This represents the worst-case scenario.

  - Space complexity: O(1)<br>
    The function uses a constant amount of additional memory, resulting in a space complexity of O(1).

  - Omega notation : Ω(n)<br>
    The best-case scenario for the absolute_minimum_difference function is that it takes a time proportional to the size of the input array.
