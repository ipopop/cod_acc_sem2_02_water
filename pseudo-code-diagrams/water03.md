## The Nth element of the Fibonacci sequence

### 1. Reference Documentation :
[Ruby Programming Language](https://www.ruby-lang.org/en/)<br>
[Fibonacci Sequence](https://en.wikipedia.org/wiki/Fibonacci_number)<br>
[Memoization](https://en.wikipedia.org/wiki/Memoization)

### 2. Specs :

> Create a program that displays the Nth element
> of the famous Fibonacci sequence.
>
> (0, 1, 1, 2) being the beginning of the sequence
>
> The first element being at index 0.
>
> Display -1 if the parameter is negative or bad.

Language: <b>Ruby</b>

Exec Command in Shell:

```
ruby script.rb <number>
```

Expected result :

  The program should output the Fibonacci number 
  corresponding to the given input.

Examples of use:

```
$> ruby script.rb 3
2
$>
```

```
$> ruby script.rb 35
9227465
$>
```

```
$> ruby script.rb -35
-1
$>
```

### 3. Algo :

The Fibonacci sequence has many interesting mathematical properties
and appears in many different fields, such as mathematics, physics, and biology.

The algorithm used to generate the Fibonacci sequence is very simple.
To generate the nth number in the sequence,
you add the (n-1)th and (n-2)th numbers together.
For example, to generate the 4th number in the sequence (which is 2),
you add the 2nd number (1) and the 3rd number (also 1) together: 1 + 1 = 2.

Fibonacci algo :

```
n-2  +  n-1  =  n
|     |     |
v     v     v
+---+ +---+ +---+
| 0 | | 1 | | 1 | --> 2
+---+ +---+ +---+
```

### 4. Steps :

1. Initialize cache array.
2. Define a 'fibo' function that takes an integer argument 'n'<br>
   and returns the 'nth Fibonacci' number.
3. Check if the input argument is a non-negative integer.<br>
   If it's not, print an error message and exit the program.
4. Use cache if available to return the result.<br>
   Ex. of cache content :<br>
   ```{2=>1, 3=>2, 4=>3, 5=>5, etc...}```
5. If the result is not in the cache,<br> compute and cache the 'nth Fibonacci' number.
6. Call the 'fibo' function with the input argument.
7. Print the output.

### 5. Diagrams :

```
Start
 |
 |__ Get input from user
 | 
 |__ Initialize cache array
 |
 |__ Define 'fibo' function
 |      |
 |      Check if input is a non-negative integer
 |      |   |
 |      |   |__ If not, print an error message & exit
 |      |
 |      Use cache if available to return result
 |          |
 |          If not in cache
 |              |
 |              |__ Compute and cache
 |                  the nth Fibonacci number
 |
 |__ Call 'fibo' function with input
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
+------------------------+
| Initialize cache array |
+------------------------+
        |
        V
+------------------------+
| Define 'fibo' function |
+------------------------+
        |       |
        |       V
        |    +--------------------------------------+
        |    | Check if input is a non-negative int |
        |    +--------------------------------------+
        |       |       |
        |       |       V
        |       |    +---------------------------------------+
        |       |    | If not, print an error message & exit |
        |       |    +---------------------------------------+
        |       |
        |       V
        |    +-----------------------------------------+
        |    | Use cache if available to return result |
        |    +-----------------------------------------+
        |              |
        |              V
        |           +--------------------------+
        |           | If not in cache          |
        |           | Compute and cache        |
        |           | the nth Fibonacci number |
        |           +--------------------------+
        |
        V
+---------------------------------+
| Call 'fibo' function with input |
+---------------------------------+
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


### 6. Pseudo-code :

```
BEGIN
    FUNCTION fibo(n)
        cache = {}  // Initialize cache inside the function

        IF n < 0 THEN
            RETURN -1
        END IF
        IF n <= 1 THEN
            RETURN n
        END IF
        IF cache[n]
            RETURN cache[n]
        END IF 
        cache[n] = fibo(n-1) + fibo(n-2)
    END FUNCTION

    IF ARGV.length != 1 THEN
        PRINT "Error: incorrect number of arguments provided"
    ELSE
        n = ARGV[0].to_i
        PRINT fibo(n)
    END IF
END
```

### 7. Notation :

Using memoization (cache)

Big O <em>(worst case complexity algo)</em> :

  - Time complexity : <b>O(n)</b>

  - Space complexity  : <b>O(n)</b>

Omega (Ω-notation <em>best case complexity algo)</em> :

  - Omega notation for this code is also <b>Ω(n)</b>