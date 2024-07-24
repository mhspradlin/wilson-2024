#set page("presentation-16-9")

#set text(size: 30pt)
#set document(title: "Introduction to Programming with Raspberry Pi", author: "Mitch Spradlin")

#heading(outlined: false)[Introduction to Programming]
June 2024

Mitchell Spradlin --- Amazon

#pagebreak()

= The Class
- Mix of lectures and hands-on labs
- Break halfway through class
- Raise hand to ask questions nay time
- Be respectful and inclusive
- Explore!

#pagebreak()

= Background

Going around the room:
- What is your name?
- What school do you go to?
- What grade are you going in to?
- Have you done any programming? What languages?
- Have you used a Raspberry Pi?

#pagebreak()

= Hardware

To get your computer up and running:
- Open each of the boxes
  - Keep the boxes for repacking later
- Connect monitor and mouse to Pi
- Connect power to the monitor
- Connect power to the Pi last
- Be gentle - altogether this equipment is about \$250

#pagebreak()

#columns(2)[
  #figure(image("hdmi-male-and-female.jpeg", height: 30%), caption: "HDMI")
  #figure(image("usb-male-and-female.jpeg", height: 30%), caption: "USB A")
  #figure(image("usb-c-male-and-female.jpg", height: 30%), caption: "USB C")
]

#pagebreak()

#figure(image("Raspbian_2019.jpeg"), caption: "Graphical Desktop")

#pagebreak()

== Mu --- Python Editor

#align(center + horizon)[
#image("mu_brand.png", width: 20%)
]

#pagebreak()

#image("mu.gif")

#pagebreak()

== Your First Program

- Click the "New" button, then "Save" using `hello.py`
- Type this Python code into the text area:
```python
    print("Hello World!")
```
- Press `Run`
- Observe the output at the bottom of the screen
- Click "Stop" to return to editing your code

#pagebreak()

== How Python Executes your Code

```python
print("Dog")
print("Cat")
# Comments start with "#"
# print("Rabbit")
print("Bird")
```

#pagebreak()

== Variables

Variables associate a *name* with a *value*.

The name goes on the left, then `=`, then the value.

```python
name = "value"
score = 30
# The below throws an error
10 = score
```

#pagebreak()

== Reading Variables

When a variable is used, its value at the time of execution is substituted for the variable name.

```python
print("Dog")
animal = "Dog"
print(animal)
```

#pagebreak()

== Reassigning Variables

```python
animal = "Dog"
print(animal)
animal = "Cat"
print(animal)
```

#pagebreak()

== `while` Loop

A *loop* instructs Python to execute a block of code over and over.

A *while loop* has this structure:
```python
while statement_that_is_true_or_false:
    code_to_execute
    more_code_to_execute
```

#pagebreak()

== `while` Loop

```python
raining = True
while raining:
    print("Frog")
```

#pagebreak()

== `while` Loop

```python
number = 0
number_is_small = True
while number_is_small:
    print(number)
    number = number + 1
    number_is_small = number < 10
```

#pagebreak()

```python
number = 0
while number < 10:
    print(number)
    number = number + 1
```

#pagebreak()

== Break

#pagebreak()

== Lab 1: Getting Started with the Sense HAT

- Connect the Sense HAT
- Go to here and try to complete the steps through "Displaying images"
  - #link("https://tinyurl.com/wilson-pi-hat")
- If you finish early, feel free to continue past those exercises or write your own programs.
