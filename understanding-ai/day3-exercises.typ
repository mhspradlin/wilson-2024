#set page(
  paper: "us-letter"
)

#set document(author: "Mitch Spradlin", title: "Understanding AI Day 3 Exercises")

#align(center)[
= Classifiers: Exercises 
]

#v(2em)

The below questions all reference this hypothetical data set:
#table(columns: (auto, 1fr, 1fr, 1fr), align: center,
[], [*Weather*], [*Traffic*], [*Accident*],
[1], [Rainy], [Light], [Yes],
[2], [Rainy], [Light], [No],
[3], [Rainy], [Heavy], [Yes],
[4], [Sunny], [Light], [No],
[5], [Sunny], [Heavy], [No],
[6], [Sunny], [Heavy], [No],
[7], [Sunny], [Heavy], [Yes],
[8], [Rainy], [Light], [No],
[9], [Rainy], [Light], [Yes],
[10], [Rainy], [Heavy], [Yes],

)

+ Suppose we build a classifier that predicts the following values for `Accident`:
  #table(columns: (auto,) * 11, 
  [Sample \#], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
  [Predicted], [Yes], [Yes], [Yes], [No], [No], [No], [No], [Yes], [Yes], [Yes],
  [Actual], [Yes], [No], [Yes], [No], [No], [No], [Yes], [No], [Yes], [Yes],)
  Fill out the below confusion matrix.
  #table(columns: (1fr, 1fr, 1fr), rows: (40pt, 40pt, 40pt), align: center + horizon, inset: 5pt,
[], [Predicted Negative], [Predicted Positive],
[Actual Negative], [], [],
[Actual Positive], [], [])
+ Calculate the accuracy, $F_1$ score, and $phi$ coefficient for the above data set. Are any of these values potentially misleading?
+ Using Naive Bayes, predict the value of `Accident` for a data point $("Weather" = "Rainy", "Traffic" = "Heavy")$.

#pagebreak()

== Reference

=== Classifier Accuracy

$ "Accuracy" = ("True positives" + "True negatives") / ("Total") $
$ "F"_1 &= (2 * "True positives") / (2 * "True positives" + "False positives" + "False negatives") $
$ phi &= "MCC" = ("TP" * "TN" - "FP" * "FN") / sqrt(("TP" + "FP")("TP" + "FN")("TN" + "FP")("TN" + "FN")) $

=== Bayes' Theorem

$ P(A|B) = (P(B|A) * P(A)) / P(B) $

=== Naive Bayes

#set math.equation(numbering: "(1)")

$ p(y|bold(x)) = (p(bold(x)|y) * p(y)) / p(bold(x)) prop p(bold(x)|y) * p(y) $ <bayes>

$ p(y) &= ("# of " y) / "Total" = (|y|) / (|X|) $ <prob>
$
  p(bold(x)|y) &= p((a_1, a_2, ..., a_n)|y) \
&= p(a_1|y) * p(a_2|y) * ... * p(a_n|y) \
&= product_(i=1)^n p(a_i|y)
$ <indep>


#set math.equation(numbering: none)

To predict $y$ for a data point $bold(x) = (a_1, a_2, ..., a_n)$, calculate $p(y|bold(x))$ for each possible $y$ and choose the one that is the largest:

$  
  "Predicted " y = accent(y, hat) &= max_y p(y|bold(x)) \
   &= max_y p(y) * p(bold(x)|y) #h(4.3em) #text()[By @bayes] \
      &= max_y (|y|) / (|X|) * p(bold(x)|y) #h(4.5em) #text()[By @prob] \
      &= max_y (|y|) / (|X|)  * product_(i=1)^n p(a_i|y) #h(3em) #text()[By @indep] \
$

#v(3em)


$
  p(a_i|y) &= ("# of data points with attribute " a_i "and " y ) / ("Total number of data points with" y) \
  |X| &= "Size of data set"
$
