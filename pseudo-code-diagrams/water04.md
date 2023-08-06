## Find the first prime number greater than a given number

### 1. Reference Documentation :

[Ruby Programming Language](https://www.ruby-lang.org/en/)<br>
[Prime Numbers](https://en.wikipedia.org/wiki/Prime_number)<br>
[Memoization](https://en.wikipedia.org/wiki/Memoization)

### 2. Specs :

>  Create a program that displays the first prime number<br>
>  greater than the number given as an argument.
>  
>  Display -1 if the parameter is negative or bad.

Language: <b>Ruby</b>

Exec Command in Shell:

```
ruby exo.rb <number>
```

Examples of use:

```
$> ruby exo.rb 14
17
$>
```

### 3. Algo :

The algorithm to find the first prime number greater than a given number is to start from the given number, increment it until a prime number is found.

We defines a function **'is_prime'** that checks if a given number **'n'** is prime or not. It also uses a **'cache'** to store previously checked prime numbers for faster lookup. Here's a step-by-step explanation of the code:

1. The function takes two arguments: **'n'** (the number to check for primality) and **'cache'** (an array to store previously checked prime numbers) :

```
def is_prime?(n, cache)
```

2. Check if **'n'** is already in the **'cache'**. If it is, return true, as it has been previously determined to be prime :

```
return true if cache.include?(n)
```

3. If **'n'** is less than or equal to 1, return false, as it is not a prime number :

```
return false if n <= 1
```

4. Iterate through the range of numbers from 2 to the square root of **'n'**. The square root is used because any factor of **'n'** larger than its square root will have a corresponding factor smaller than the square root. This optimizes the search for factors :

```
(2..Math.sqrt(n)).each do |i|
```

If **'n'** is divisible by **'i'** *(i.e., n % i == 0)*, then **'n'** is not a prime number, so return false :

```
return false if n % i == 0
```

After the loop has finished without finding any factors, add **'n'** to the **'cache'**, as it is now determined to be a prime number :

```
cache << n
```

Finally, return true, as **'n'** is a prime number.

```
  true
end
```

In summary, the **'is_prime'**? function checks if a given number **'n'** is prime by iterating through possible factors up to the square root of **'n'**. It also uses a **'cache'** to store previously checked prime numbers for faster performance.

### 4. Steps :

1.  Define an 'is_prime?' function that takes an integer argument 'n' and a cache.
2.  Check if the input argument is an integer or a string.<br> If it's not, print an error message and exit the program.
3.  Initialize the cache with the first few prime numbers.
4.  Iterate through numbers starting from n+1 until a prime number is found.
5.  Use the 'is_prime?' function to check if the number is prime, using the cache.
6.  Print the output.


### 5. Diagrams :

```
Start
 |
 |__ Define 'is_prime?' function
 |      |
 |      Check if n is in the cache
 |      |   |
 |      |   |__ If yes, return true
 |      |
 |      Check if n is less than or equal to 1
 |      |   |
 |      |   |__ If yes, return false
 |      |
 |      Iterate from 2 to the square root of n
 |      |   |
 |      |   |__ If n is divisible by any number in the range,
 |      |       return false
 |      |
 |      Add n to the cache and return true
 |
 |
 |__ Check input format from user (ARGV)
 |      |
 |      |__ If incorrect, print an error message & exit
 |
 |__ Convert input to an integer (n)
 |   and initialize cache with prime numbers
 |
 |__ Initialize result with n+1
 |
 |__ Iterate until a prime number is found
 |   using 'is_prime?' function and cache
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
+-----------------------------+
| Define 'is_prime?' function |
+-----------------------------+
    |           |
    |           V
    |   +-------+--------------------+
    |   | Check if n is in the cache |
    |   | If yes, return true        |
    |   +----------------------------+
    |           |
    |           V
    |   +----------------------------+
    |   | Check if n is less than or |
    |   | equal to 1                 |
    |   | If yes, return false       |
    |   +----------------------------+
    |           |
    |           V
    |   +------------------------------+
    |   | Iterate from 2 to the square |
    |   | root of n                    |
    |   | If n is divisible by any     |
    |   | number in the range,         |
    |   | return false                 |
    |   +------------------------------+
    |           |
    |           V
    |   +-----------------------------+
    |   | Add n to the cache and      |
    |   | return true                 |
    |   +-----------------------------+
    |
    V
+------------------------------+
| Check input format from user |
| (ARGV)                       |
+------------------------------+
    |           |
    |           V
    |    +--------------------------------------+
    |    | If incorrect, print an error message |
    |    | & exit                               |
    |    +--------------------------------------+
    |       
    V
+-----------------------------------------------+
| Convert input to an integer (n) and           |
| initialize cache with first few prime numbers |
+-----------------------------------------------+
    |
    V
+-------------------+ 
| Initialize result |
| with n+1          |
+-------------------+ 
    |
    V
+---------------------------------------------+
| Iterate until a prime number is found using |
| 'is_prime?' function and cache              |
+---------------------------------------------+
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
    FUNCTION is_prime?(n : INT, cache : ARRAY<INT>) : BOOL
        IF cache.include?(n)
            RETURN true
        END IF
        IF n <= 1
            RETURN false
        END IF
        FOR i : INT FROM 2 to Math.sqrt(n)
            IF n % i == 0
                RETURN false
            END IF
        END FOR
        cache.push(n)
        RETURN true
    END FUNCTION

    IF ARGV.length != 1 || !ARGV[0].match?(/\A-?\d+\z/)
        PRINT "Error: incorrect input format provided"
    ELSE
        n : INT = ARGV[0].to_i
        result : INT = n + 1
        cache : ARRAY<INT> = [2, 3, 5, 7]
        WHILE NOT is_prime?(result, cache)
            result += 1
        END WHILE
        PRINT result
    END IF
END
```

### 7. Notation (with cache) :

Using memoization, we can store the prime numbers we've found so far and avoid recalculating them, which will improve the algorithm's performance.

Big O (worst case complexity algo) :

  - Time complexity : O(n * sqrt(n)) (same as without memoization, since we still need to check if a number is prime)
  - Space complexity : O(n) (due to storing prime numbers in cache)

Omega (Ω-notation best case complexity algo) :

  - Time complexity: <b>Ω(1)</b> for each 'is_prime?' call


### 8. Regex :

The regular expression /\A-?\d+\z/ is a pattern that matches an input string that contains only an integer number. The regular expression is made up of the following components:

\A:  Matches the start of the input

-?\d+:  Matches an optional minus sign followed by one or more digits

\z:  Matches the end of the input
