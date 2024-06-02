#set page("presentation-16-9")

#set text(size: 30pt)

= Day 3

#pagebreak()

== Defining Functions

You can define your own functions using `def`.

This is important to avoid repeating yourself.

Functions have a *name*, *parameters*, and *return* a value (usually).

#pagebreak()

== Defining Functions

```python
def is_big(number):
  if number > 100:
     return True
  else:
     return False

print(is_big(10))
print(is_big(200))
```

#pagebreak()

== Number-Finder Take Two

Our previous program for finding the smallest number whose square was bigger than a certain other number only worked for a *hard-coded* number.

If we wanted to find $n$ for multiple square values, we would need to copy the code or write a new algorithm.

Defining a *function* lets us reuse our algorithm easily.

#pagebreak()

== Number-Finder Function

Our previous code, for reference:

#text(size: 26pt)[
```python
still_searching = True
current_number = 0
while still_searching:
  square = current_number * current_number
  if square > 1000:
    print(current_number)
    print(square)
    still_searching = False
  else:
    current_number = current_number + 1
```
]

== Number-Finder Function

#text(size: 26pt)[
```python
function find_smallest_square_bigger_than(target_number):
  current_number = 0
  while True:
    square = current_number * current_number
    if square > target_number:
      return current_number
    else:
      current_number = current_number + 1
```
]

Note, we no longer need still_searching, as the loop ends when we *return*.

#pagebreak()

== Lists

#pagebreak()

== Creating Lists

#pagebreak()

== Adding to Lists

#pagebreak()

== Removing from Lists

#pagebreak()

== Iterating over Lists

#pagebreak()

== Algorithm: Selection Sort

It's common to want to sort a list in a particular order:
- Sort emails by time
- Sort scores high to low in a game
- ?

A simple way to do this is the *selection sort* algorithm.

#pagebreak()

== Selection Sort

TODO: Describe selection sort algorithm

== Selection Sort

Write selection sort function

#pagebreak()

== Break

#pagebreak()

== Lab 3: Where's the Treasure?

