#set page("presentation-16-9")

#set text(size: 30pt)

#heading(outlined: false)[Understanding Artificial Intelligence]
July 2024

Mitchell Spradlin --- Amazon

// TODO: Different structure
// Three parts
// - Story involving a person about topic
// - Crunchy mathy part, perhaps hands-on exercise
// - Read a thing and discuss in groups then as a class

#pagebreak()

= The Class
- Mix of lectures, reading, and discussions
- Break halfway through class
- Raise hand to ask questions at any time
- Be respectful and inclusive

#pagebreak()

= Background

Going around the room:
- What is your name?
- What school do you go to?
- What grade are you going in to?
- What are you most hoping to learn this week?

#pagebreak()

= Overview

/ Day 1: The Landscape, Decision Trees
/ Day 2: Social Media Algorithms
/ Day 3: Fraud Detection
/ Day 4: Chatbots
/ Day 5: Deepfakes, the AI Control Problem

#pagebreak()


= The AI Landscape

/ Intelligence: The ability to perceive or infer information.
/ Artificial Intelligence (AI): Intelligence exhibited by machines.

The above definition is very broad. Most people mean a computer system that can make decisions that change depending on the circumstances.

#pagebreak()

// == Definitions
// - *Narrow AI* --- AI applied to solve a specific problem
// - *General AI* (AGI) --- AI that can accomplish any intellectual task humans or animals can perform
// - *Superintelligence* --- Intelligence that exceeds humans
// - *Machine Learning* (ML) --- Computer algorithms that improve automatically through experience
// - *Deep Learning* --- Subset of ML based on neural networks and representation learning

// #figure(image("figures/AI_hierarchy.svg"))

// - *Data Science* --- Using statistics and algorithms to extract knowledge from data
// - *Traditional Programming* --- Encoding a set of rules for a machine to execute; typically contrasted with ML
// - *Model* --- An abstract conceptual representation of the workings of a system of objects in the real worls
// - *Training* --- Executing a Machine Learning algorithm on data to create a model

// #pagebreak()

// AI typically works together with data science:

// #figure(image("figures/ai-and-ds.png"))

== History

The idea of intelligent artificial beings has been around for a long time.

#figure(image("figures/talos.jpeg", height: 50%), caption: "Talos, giant bronze protector of Crete, c. 300 BC")

== History

- AI assumes that the process of human thought can be mechanized
- Formal reasoning developed with a long history:
   - Aristotle --- Logic
   - al-Khwārizmī --- Algebra and algorithms
   - Gödel --- Logic, incompleteness proof
   - Many, many, more all over the world


// - 1930s --- Cybernetics, early neural networks
//   - Feedback loops, information theory, Turing machine
// - 1950 --- Turing Test
// - 1950s --- Checkers program
// - 1956 --- AI founded as an academic discipline (Dartmouth Workshop)
// - 1956-1974 --- Symbolic AI, rapid progrss and optimism
// - 1974-1980 --- First AI winter
// - 1980-1987 --- Expert systems boom, AI bubble
// - 1987-1993 --- Second AI winter
// - 1993-2011 --- AI behind the scenes
// - 2011-Today --- Big data, deep learning, AGI

// *AI Effect* --- as soon as AI successfully solves a problem, the problem is no longer considered by the public to be a part of AI. This phenomenon has occurred in relation to every AI application produced, so far, throughout the history of development of AI.

// #pagebreak()

#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/startreklcars.jpeg", height: 80%))
    In 1985, AI was largely the stuff of science fiction
]

#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/Feng-Hsiung_20Hsu.png", height: 80%))
    In 1985, Dr. Feng-Hsiung Hsu began developing a chess supercomputer while
    a doctoral student at Carnegie Mellon.

    In won a computer chess championship in 1987.
]

#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/300px-KasparobDeepThought1989.jpg", height: 80%))
    In 1988, he developed Deep Thought. He joined
    IBM Research after getting his doctorate in 1989.

    Deep Thought played Garry Kasparov in 1989 and lost badly. It was then renamed Deep Blue.
]

#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/Deep_Blue.jpeg", height: 80%))
    Between 1989 and 1996, Deep Blue was developed using highly-tuned algorithms,
    including decision trees, and custom chips were created to run the algorithms
    quickly.
]

#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/deep-blue-1997.jpeg", height: 80%))
    Deep Blue played Garry Kasparov in Feburary of 1996. It made history
    by being the first computer to win a game against the reigning world
    champion, but Kasparov won 4-2.
]

#pagebreak()

= Garry Kasparov

#columns(2)[
    #figure(image("figures/Kasparov_Magath_1985_Hamburg-2.png", height: 80%))
    - Youngest world champion ever (22) in 1985
    - Was ranked \#1 for more than 25 years (!)
    - Retired in 2007, pursued activism
]


#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/deep-blue-1997-2.jpeg", height: 80%))
    Deep Blue was upgraded, rematch in May 1997.
    - First game move 44 bug, Kasparov wins
    - Second game Blue wins, cheating accusation
    - Third game esoteric opening, draw
]

#pagebreak()

= Deep Blue

#columns(2)[
    #figure(image("figures/deep-blue-1997-2.jpeg", height: 80%))
    - Fourth game draw, bad time management by Kasparov
    - Fifth game draw, Kasparov missed a win
    - Sixth game, dubious opening by Kasparov, Blue wins

]

#pagebreak()

// In 1985-1990s, computers were considered powerful but AI was considered the stuff of science fiction
// Background on Feng-hsiung Hsu
// Background on Garry Kasperov
// Deep Thought - Won one game in 1988, lost big time to Kasperov in 1989
// Deep Blue 1996 match - Deep blue wins first, but Kasperov comes back to win in part by using anti-computer tactics (emphasis on long-term planning)
// Deep Blue 1997 match - upgraded to run twice as fast, with additional fine-tuning by chess grandmaster.
//     First game, Kasparov wins but a bizarre 44th move by blue due to a bug thought to have intimidated
//     Second game, Kasparov resigns but it turns out he could have played a draw. Kasparov accuses Deep Blue of cheating because a particular move was too sophisticaed
//     Third game, Kasparov deliberately played an esoteric opening, but ends up as a draw
//     Fourth game, Draw in part due to hurried moves and bad time management
//     Fifth game, BDraw, turns out Kasparov had a win partway through
//     Sixth game, Blue wins very fast. Kasparov tried to play a dubious opening on a gamble that the computer wouldn't play the refutation because it doesn't result in a material gain, but deep blue did and Kasparov resigns

== Group Exercise

Split into groups and discuss:
- What are three examples of AI you have encountered in your life?
- How can AI be used as a useful tool?
- Are there any risks associated with AI?
We will then have a class discussion.

#pagebreak()

= Decision Trees

#figure(image("figures/iris-decision-tree.png", height: 80%))

== Uses

- Commonly used in *expert systems*
- Is a *decision support* model
- Can encode policies and best practices

#v(2em)

Example of decision trees in action:
#align(horizon + center)[
  https://akinator.com
]

#pagebreak()

== Approach

#columns(2)[
  #figure(image("figures/decision-tree-example.jpeg", height: 80%))
  - Start at root
  - Squares mean a decision
  - Continue until you get to the end
]

#pagebreak()

#figure(image("figures/decision-tree-chance-nodes.svg", height: 80%))

- Circles mean chance, good for modeling outcomes

== Exercise: Make a Decision Tree by Hand

Create a decision tree to decide if a given animal is a fish based on the table below.

#text(size: 24pt)[
#table(columns: (auto, auto, auto , auto),
  inset: 10pt,
  [],
  [*Can survive without coming to surface?*],
  [*Has flippers?*],
  [*Fish?*],
  [1], [Yes], [Yes], [Yes],
  [2], [Yes], [Yes], [Yes],
  [3], [Yes], [No], [No],
  [4], [No], [Yes], [No],
  [5], [No], [Yes], [No],
)
]

#pagebreak()

== Exercise: Make a Decision Tree by Hand

- What was your solution?
- How can you tell if it works as you expect?

#pagebreak()

= Exercise: Make a Decision Tree for Tic-Tac-Toe

Make a decision tree to play tic-tac-toe. Write down your rules such that another
person could follow them.

When we're done, we will play out a game on the board using the tree.

#pagebreak()

#text(size: 28pt)[
#table(columns: (auto, auto, auto , auto, auto, auto),
  inset: 10pt,
  [],
  [*No surfacing?*],
  [*Flippers?*],
  [*Head?*],
  [*Tentacles?*],
  [*Fish?*],
  [1], [Yes], [Yes], [Yes], [No], [Yes],
  [2], [Yes], [Yes], [Yes], [Yes], [Yes],
  [3], [Yes], [No], [No], [No], [No],
  [4], [No], [Yes], [Yes], [No], [No],
  [5], [No], [Yes], [No], [Yes], [No],
  [6], [No], [No], [No], [No], [No],
  [7], [No], [Yes], [Yes], [Yes], [No],
  [8], [Yes], [Yes], [No], [No], [No],
)
]

== Algorithm: ID3

+ Calculate the _entropy_ of every attribute $a$ of data set $S$.
+ Split the set $S$ into subsets using the attribute for which the resulting entropy after splitting is minimized.
+ Make a decision tree node containing that attribute.
+ Recurse on subsets using the remaining attributes.

_Entropy_ is a measure of how disordered data is.

== Entropy

In information theory, the "informational value" of some data is related to how surprising the event is. If something highly likely occurs, then the data contains little information. If something unlikely occurs, then there the event is very informative.
- Knowledge of a losing lottery number: Uninformative
- Knowledge of the winning number: Very informative

$
"Data point " x &= (x_a_1, x_a_2, ..., x_a_n) \
"Data set X" &= x_1, ..., x_n \
"Probability of event " E_i &= p(E_i) \
 &= ("Count of " x "where" x_a_i = E_i) / ("Total count of " X) = |E_i| / |X| \
 "Information" &= I(E_i) = log_2(1 / (p(E_i))) \
 &= -log_2(p(E_i))) \
$



$
 "Entropy of " X &= Eta(X) = sum_(i = 1)^n p(E_i) * I(E_i) \
"Information Gain"&" of attribute" A = I G(X,A) \ &= Eta(X) - Eta(X|A) \
&= Eta(X) - sum_(E_a in A) |E_a| / |X| * Eta(x in X | x_a = E_a)
$

Next we'll work an example.

== Entropy: Example

#text(size: 24pt)[
#table(columns: (auto, auto, auto , auto),
  inset: 10pt,
  [],
  [*No surfacing?*],
  [*Flippers?*],
  [*Fish?*],
  [1], [Yes], [Yes], [Yes],
  [2], [Yes], [Yes], [Yes],
  [3], [Yes], [No], [No],
  [4], [No], [Yes], [No],
  [5], [No], [Yes], [No],
)]

We'll compare information gain for splitting on `No surfacing?` and `Flippers?`.

#pagebreak()

Splitting on `No surfacing?`:

#let no-surfacing = text(size: 24pt)[
#table(columns: (auto, auto, auto , auto),
  inset: 10pt,
  [],
  [*No surfacing?*],
  [*Flippers?*],
  [*Fish?*],
  text(red)[1], text(red)[Yes], text(red)[Yes], text(red)[Yes],
  text(red)[2], text(red)[Yes], text(red)[Yes], text(red)[Yes],
  text(red)[3], text(red)[Yes], text(red)[No], text(red)[No],
  text(blue)[4], text(blue)[No], text(blue)[Yes], text(blue)[No],
  text(blue)[5], text(blue)[No], text(blue)[Yes], text(blue)[No],
)]

#no-surfacing

#pagebreak()

Overall entropy is: #text(size:28pt)[$Eta(X_"Fish?") &= sum_(i = 1)^n p(E_i) * I(E_i)$]
#columns(2)[
#no-surfacing
  $
&= p("Yes") * I("Yes") \
&#h(2em)+ p("No") * I("No") \
&= 2/5 (-log_2(2/5)) \
&#h(2em)+ 3/5(-log_2(3/5)) \
&approx 0.97 "bits of entropy"
$
]

Entropy of `No surfacing?` = #text(red)[Yes]: #text(size:22pt)[$Eta(X_"Fish?"&|"No surfacing?" = "Yes")$]
#columns(2)[
#no-surfacing
$
&= p("Yes") * I("Yes") \
&#h(2em)+ p("No") * I("No") \
&= 2/3 (-log_2(2/3)) \
&#h(2em)+ 1/3 (-log_2(1/3)) \
&approx 0.92 "bits of entropy"
$
]

Entropy of `No surfacing?` = #text(blue)[No]: #text(size:22pt)[$Eta(X_"Fish?"&|"No surfacing?" = "No")$]
#columns(2)[
#no-surfacing
$
&= sum_(i = 1)^n p(E_i) * I(E_i) \
&= p("No") * I("No")\
&= 1 (-log_2(1)) \
&= 0 "bits of entropy"
$
]

$& I G(X_"Fish?", A_"No surfacing?") \
&= Eta(X_"Fish?") - Eta(X_"Fish?"|A_"No surfacing?") \
&= Eta(X_"Fish?") - \
& #h(2em) sum_(E_a in  A_"No surfacing?") |E_a| / |X_"Fish?"| Eta(X_"Fish?" | "No surfacing?" = E_a) \
&= Eta(X_"Fish?") - |E_"Yes"| / |X_"Fish?"| Eta("Yes", "Yes", "No") + |E_"No"| / |X_"Fish?"| Eta("No", "No") \
&approx 0.97 - 3/5 * 0.92 + 2/5 * 0 = 0.418 "bits"
$

#pagebreak()

Splitting on `Flipper?`:

#text(size: 24pt)[
#table(columns: (auto, auto, auto , auto),
  inset: 10pt,
  [],
  [*No surfacing?*],
  [*Flippers?*],
  [*Fish?*],
  text(red)[1], text(red)[Yes], text(red)[Yes], text(red)[Yes],
  text(red)[2], text(red)[Yes], text(red)[Yes], text(red)[Yes],
  text(blue)[3], text(blue)[Yes], text(blue)[No], text(blue)[No],
  text(red)[4], text(red)[No], text(red)[Yes], text(red)[No],
  text(red)[5], text(red)[No], text(red)[Yes], text(red)[No],
)]

Entropy of #text(red)[Yes] is $1$.
Entropy of #text(blue)[No] is $0$.
Information gain is $approx 0.97 - 4/5 * 1 - 1/5 * 0 = 0.17 "bits"$.

#pagebreak()

== Splitting

- Splitting on `No surfacing?` has information gain of $0.42$
- Splitting on `Flipper?` has information gain of $0.17$

Thus, `ID3` would split on `No surfacing?` first.

Since everything in the #text(blue)[No] branch is the same classification, those rows are removed from the data set.

#pagebreak()

After that, there's just `Flippers?` left to split on using the remaining data.

#columns(2)[
#table(columns: (auto, auto, auto),
  inset: 10pt,
  [],
  [*Flippers?*],
  [*Fish?*],
  text(red)[1], text(red)[Yes], text(red)[Yes],
  text(red)[2], text(red)[Yes], text(red)[Yes],
  text(blue)[3], text(blue)[No], text(blue)[No],
)
- This is the last attribute, so no calculations are necessary.
- Because rows get removed, the starting entropy can change attribute-to-attribute.
]
#pagebreak()

== Other Algorithms

As with most machine learning algorithms, there are alternatives to choose from:

- C4.5 --- Successor to ID3, can handle numeric values
- C5.0 --- Successor to C4.5, more efficient but proprietary
- CART --- Family of algorithms
- MARS --- Family of algorithms

Each has different performance and complexity.

#pagebreak()

== Strengths and Limitations

- Simple to interpret
- Valuable as a modeling process
- Generally good performance on large data
- Small changes in the data can render a tree inaccurate
- Less accurate compared to other techniques
- Gets very complicated if many factors are involved
- Prone to *overfitting*---matching the training data so closely it doesn't give good predictions
