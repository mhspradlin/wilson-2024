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

== Number-Finder Function (previous)

#text(size: 26pt)[
```python
still_searching = True
current_number = 0
while still_searching:
  square = current_number * current_number
  if square > 2000000:
    print(current_number)
    print(square)
    still_searching = False
  else:
    current_number = current_number + 1
```
]

#pagebreak()

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

*Data structures* are used to represent data that is related in some way.

The *list* data structure is one of the most common and useful ones you will encounter.

A list is a number of *elements* in a specific order.

#pagebreak()

== Creating Lists

Use square brackets to create a list:

```python
empty_list = []
my_awesome_numbers = [35, 128, 2]
words = ["cat", "dog", "elephant"]
color = "blue"
colors = [color, "red"]
```

#pagebreak()

== Getting Elements from a List

You can access an element at an *index* using square brackets:
```python
animals = ["cat", "dog", "elephant"]
animals[0]    # "cat"
animals[1]    # "dog"
animals[2]    # "elephant"
animals[3]    # IndexError: list index out of range
```

#pagebreak()

== Adding to Lists

You can add elements to the end of a list using `append`:
```python
animals = ["cat", "dog", "elephant"]
animals.append("bird")
animals[3]   # "bird"
```

#pagebreak()

== Removing from Lists

Removing elements is done with `remove`:
```python
animals = ["cat", "dog", "elephant"]
animals.remove("dog")
animals[1]   # "elephant"
```

#pagebreak()

== Getting List Size

Call the `len` function on a list:
```python
animals = ["cat", "dog", "elephant"]
len(animals)    # 3
animals.append("bird")
len(animals)    # 4
animals.remove("dog")
len(animals)    # 3
```

#pagebreak()

== Iterating over Lists

It's very common to want to run a bit of code on every element of a list. You can do this using `for..in`:
```python
animals = ["cat", "dog", "elephant"]
for animal in animals:
  print(animal + "!")
```

#pagebreak()

== Algorithm: Selection Sort

It's common to want to sort a list in a particular order:
- Sort emails by time
- Sort scores high to low in a game
- ?

How might you sort a deck of cards?

A simple way to do this is the *selection sort* algorithm.

#pagebreak()

== Selection Sort

Given a list to sort called `input`,
+ Create an empty list called `output`
+ Find the smallest element in `input`
+ Remove the element from `input`
+ Add the element to the end of `output`
+ If `input` is empty, return `output`
+ If `input` is not empty, go back to step 2

#pagebreak()

== Selection Sort

```python
def selection_sort(input):
  output = []
  while len(input) > 0:
    smallest = get_smallest(input)
    input.remove(smallest)
    output.append(smallest)
  return output
```

#pagebreak()

== `get_smallest` Function

A key part of programming is breaking down big problems into smaller problems, then combining the solutions.

Can you think of an algorithm for `get_smallest`?

#pagebreak()

== `get_smallest` function

```python
def get_smallest(input):
  smallest = input[0]
  for element in input:
      if element < smallest:
        smallest = element
  return smallest
```

#pagebreak()

== Break

#pagebreak()

== Lab 3: Where's the Treasure?

