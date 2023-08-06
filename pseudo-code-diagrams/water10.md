## Index wanted

### Specs

> Create a program that displays the first index <br>
> of a searched element in an array.
>
> The array consists of all arguments except the last one.
>
> The searched element is the last argument. 
>
> Display -1 if the element is not found.
>
> Display error and exit the program in case of argument problems.


Examples of use:

```
$> ruby exo.rb This is the world that contains Charlie a nice man Charlie
6
```
```
$> ruby exo.rb test test test
0
```
```
$> ruby exo.rb test boom
-1
```


### Pseudo-code
```
BEGIN
    FUNCTION find_element_index(array : ARRAY, element)
        FOR i : INT FROM 0 TO LENGTH(array) - 1
            IF array[i] == element
                RETURN i
            END IF
        END FOR
        RETURN -1
    END FUNCTION

    IF ARGV.length < 2 THEN
        PRINT "Error: Not enough arguments provided"
        EXIT
    END IF

    array = ARGV[0, ARGV.length - 1]
    element = ARGV[ARGV.length - 1]

    index : INT = find_element_index(array, element)

    PRINT index
END
```

## Notation

We can analyze the time and space complexity of the `find_element_index` function using Big O notation.

- Time complexity: `O(n)` where `n` is the length of the input `array`.

- Space complexity: `O(1)` because the function only uses a constant amount of additional memory.

The best case scenario for this code is also `Ω(n)`, meaning that the lower bound of time complexity is also linear in the size of the input array.
