#import "template.typ": conf, pitfall

#show: doc => conf("Static Array Queries", year: "2026", doc)

== A. The Conceptual Core
What's a *range query* problem? It's a kind of problem where you're given a range $[a,b]$ and you want to find out what's the _minimum, sum, etc._ of that range. Basically, it's when you want to *figure out some value based on a subarray of an array*.

In this document, we'll specifically talk about static array queries, meaning that the arrays processed are static (won't be changing).

When the array of values are static, and you're asked to answer multiple queries of the same structure, it's pretty intuitive why doing some preprocessing with some datastructure will help us find the answer for each query in $O(1)$ or $O(log n)$ time, instead of going through the entire array again and again for each query.

If no preprocessing is done, then for the worst-case,
$
    O(n * q)
$ where n is the no. of values in the array, and q is the no. of queries (let's say it takes $O(n)$ to answer each query, then that's $O(n^2)$ and it could be worse if each query takes $n^2, n^3, ...$)

There are a couple of data structures to use, depending on the objective.

=== 1) Prefix Sums
In a nutshell, prefix sums are a manipulation of the array that instead of storing the values, stores the successive sums of adjacent values in the array

Ex.
$
  [1, 2, 3] -> [1, 3, 5]
$

== B. Reference Implementation
```cpp
// Your verified C++ implementation here
```

#pitfall([
    Lorem ipsum dolor sit amet, common edge cases, off-by-one errors, overflow warnings.
])

== C. Problem Recognition Rules
- *Clue 1:* Lorem ipsum dolor sit amet...
- *Clue 2:* Dynamic updates paired with interval aggregates...
- *CSES Matches:* _Problem Name 1, Problem Name 2_