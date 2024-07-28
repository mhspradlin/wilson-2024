#set page(
  paper: "presentation-16-9",
  numbering: "1",
  number-align: right,
  header: locate(loc => {
  let elems = query(
    selector(heading.where(level: 1)).before(loc),
    loc,
  )
  let has-headers-on-page = query(
    selector(heading.where(level: 1)),
    loc,
  ).filter(h => h.location().page() == loc.page())
  .len() != 0
  if elems == () or has-headers-on-page {
    none
  } else {
    let body = elems.last().body
    h(1fr) + emph(body)
  }
}
)
)

#set text(size: 30pt)
#set document(title: "Understanding Artificial Intelligence", author: "Mitch Spradlin")

= Understanding Artificial Intelligence

#align(center + horizon)[Day Three]

#pagebreak()

= Classifiers

#figure(image("figures/classifier.png", height: 86%))

== Overview

- Classifiers are used to predict what *category* a given data point belongs to
  - Spam email, not spam email
  - Species of animal
- Very dependent upon domain, no one-size-fits-all

#pagebreak()

== Uses

Many things can be formulated as a classification problem:
- Email spam detection
- Filtering candidates for hiring
- Loan application decisions
- Credit scoring
- Handwriting recognition

#pagebreak()

== Algorithms

There are many classification algorithms, including:
- Decision trees
- K-nearest neighbors
- Naive Bayes
- Support vector machines
- Neural networks

#pagebreak()

== Approach: K-Nearest Neighbors

- Start with a training data set where each data point is labeled with a category
- Compare a new piece of data to the $k$ nearest data points
- Take the category that is in the majority of those $k$

Interactive example:

#align(center)[#link("https://tinyurl.com/knn-demo")]

#align(center)[#link("http://vision.stanford.edu/teaching/cs231n-demos/knn/")]

#pagebreak()

== K-Nearest Neighbors

- Generally very accurate
- Insensitive to outliers
- No assumptions about your data
- Simple to implement and understand
- Computationally expensive#footnote()[Specialized storage, like vector databases, are required for good scaling and performance on large datasets]
- Needs extra tuning if classes are skewed

#pagebreak()

== Accuracy

In the previous slide, we said that the algorithm is generally very *accurate*. Accuracy for classifiers is oftem measured using a *confusion matrix*.

#pagebreak()

== Confusion Matrix

#table(columns: (1fr, 1fr, 1fr), rows: (80pt, 100pt, 100pt), align: center + horizon, inset: 5pt,
[], [Predicted Negative], [Predicted Positive],
[Actual Negative], [True Negative], [False Positive],
[Actual Positive], [False Negative], [True Positive])

#pagebreak()

== Confusion Matrix: Example

Hypothetical classifier for "cancer" (1) or "no cancer" (0):

#table(columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), align: center + horizon,
  [Individual Number], [1], [2], [3],	[4], 	[5], 	[6],	[7], 	[8], 	[9], 	[10], 	[11], 	[12],
  [Actual Classification], 	[1], 	[1], 	[1], 	[1], 	[1], 	[1], 	[1], 	[1], 	[0] ,	[0] ,	[0], 	[0]
,  [Predicted Classification] ,	[0] ,	[0] ,	[1] ,	[1] ,	[1] ,	[1] ,	[1], 	[1], 	[1] ,	[0],	[0], 	[0])

#table(columns: (1fr, 1fr, 1fr), rows: (40pt, 40pt, 40pt), align: center + horizon, inset: 5pt,
[], [Predicted Negative], [Predicted Positive],
[Actual Negative], [], [],
[Actual Positive], [], [])

== Accuracy

There are many accuracy measurements. A basic one is:
$ "Accuracy" = ("True positives" + "True negatives") / ("Total") $

It's unwise to rely on this alone. Consider the case when 95% of the data set does not have cancer - classifying *everyone* as negative for cancer would give a 95% accuracy.

#pagebreak()

== $F_1$ Score

Good for when there's class imbalance and false negatives (FN) are especially undesirable:

$ "F"_1 &= (2 * "True positives") / (2 * "True positives" + "False positives" + "False negatives") $

== $phi$ Coefficient (MCC)

$phi$ (phi) or Matthews correlation coefficient (MCC), good general alternative to plain accuracy, especially for impalanced classes.

$ phi &= "MCC" = ("TP" * "TN" - "FP" * "FN") / sqrt(("TP" + "FP")("TP" + "FN")("TN" + "FP")("TN" + "FN")) $


#pagebreak()

== Group Exercise

- Read the provided article
- Split into groups and discuss:
  - How was a classifier likely used in this situation?
  - How did bias in the data used to train the classification model manifest in the output?
  - How could discrimination be detected and avoided?
- We'll then regroup and discuss as a class

#pagebreak()

= Bayesian Statistics

#figure(image("figures/Thomas_Bayes.gif", height: 70%), caption: "The Reverend Thomas Bayes (maybe)")

== Overview

- *Bayesian Statistics* is based on the interpretation of probability as a _degree of belief_ in an event.
- This is different than *frequentist statistics* which interprets probability as how often an event happens if the situation were to occur many times in a row.
- Useful for AI and machine learning because you can update your best guess when new data arrives.

== Bayes' Theorem

#align(horizon)[
$ P(A|B) = (P(B|A) P(A)) / P(B) $ #align(center)[where $P(B) != 0$.]]

#pagebreak()

#grid(columns: (2fr, 1fr), [
#figure(image("figures/sample-space-a-b.svg", height: 100%))
], [
  $P(A) = ...$
  $P(B) = ...$
  $P(A|B) = ...$
  $P(B|A) = ...$

  $(P(B|A)P(A))/P(B) = ...$

  $(P(A|B)P(B))/P(A) = ...$

  40 total events
])

#pagebreak()

== Bayes' Theorem: Everyday Example

- Suppose you think there's an 80% chance the belief "my friend is mad at me" is true.
- You get some new information: Your friend texted you to hang out.
- How does your _degree of belief_ change?

#pagebreak()

$ P(A|B) = (P(B|A) P(A)) / P(B) $

$P(A) &= 80% = "Prior probability" \
P(B) &= 90% = "Marginal probability" \
P(B|A) &= "Odds friend texted you if they are mad" \
&= 40% \
P(A|B) &= (40% * 80%) / (90%) approx 35.6% => "Friend is probably not mad"$

#pagebreak()

= Classifiers

== Approach: Naive Bayes

- Utilize Bayes' Theorem to calculate the *probability* that a data point is one of multiple categories
- Choose the category with the highest probability

#pagebreak()

== Naive Bayes

#grid(columns: (1fr, 2fr),
table(columns: (auto, auto, auto, auto), inset: 10pt, align: center,
[\#], [$a_1$], [$a_2$], [$y$],
[1], [Yes], [Yes], [Yes],
[2], [Yes], [No], [Yes],
[3], [Yes], [Yes], [No],
[4], [No], [Yes], [Yes],
[5], [Yes], [No], [No],
),
text(size: 28pt)[
  $
  "Pr"&"edicted " y = accent(y, hat) = max_y p(y|bold(x)) \
  p(y|bold(x)) &= (p(bold(x)|y) p(y)) / p(bold(x)) prop p(bold(x)|y) p(y) \
  p(y) &= ("# of " y) / "Total" = (|y|) / (|X|) \
  accent(y, hat) &= max_y (|y| * p(bold(x)|y)) / (|X|)
  $
])

#pagebreak()

== Naive Bayes

$p(bold(x)|y)$ is not easy to estimate. We make a *naive* assumption, that all attributes are *independent*.

In probability, if two events $A$ and $B$ are independent, then: $ p(A|B) = p(B|A) = p(A) = p(B) $

$ p(A "and" B) = p(A) * p(B) $

#pagebreak()

== Naive Bayes

A data point is a vector of events combined with an "and":

$
bold(x) &= (a_1, a_2, ..., a_n) \
p(bold(x)) &= p(a_1 "and" a_2 "and" ... "and" a_n) \
&= p(a_1) * p(a_2) * ... * p(a_n)
$

#pagebreak()

== Naive Bayes

If probabilities are *conditioned* on another event, $y$, that ends up getting applied to all the event probabilities:

$
p(bold(x)|y) &= p((a_1, a_2, ..., a_n)|y) \
&= p(a_1|y) * p(a_2|y) * ... * p(a_n|y) \
&= product_(i=1)^n p(a_i|y)
$

== Naive Bayes

$
    accent(y, hat) &= max_y (|y|) / (|X|) p(bold(x)|y) = max_y (|y|) / (|X|) * product_(i=1)^n p(a_i|y)
$

Estimating $p(a_i|y)$ is easy:

$
  p(a_i|y) = ("# of data points with attribute " a_i "and " y ) / ("Total number of data points with" y)
$

#pagebreak()

== Example

#grid(columns: (1fr, 2fr),
table(columns: (auto, auto, auto, auto), inset: 10pt, align: center,
[\#], [$a_1$], [$a_2$], [$y$],
[1], [Yes], [Yes], [Yes],
[2], [Yes], [No], [Yes],
[3], [Yes], [Yes], [No],
[4], [No], [Yes], [Yes],
[5], [Yes], [No], [No],
),
[
  A new data point has $(a_1, a_2)$ and we are predicting if $y$ = Yes or $y$ = No.
])

#pagebreak()

#grid(columns: (1fr, 2fr),
table(columns: (auto, auto, auto, auto), inset: 10pt, align: center,
[\#], [$a_1$], [$a_2$], [$y$],
[1], [Yes], [Yes], [Yes],
[2], [Yes], [No], [Yes],
[3], [Yes], [Yes], [No],
[4], [No], [Yes], [Yes],
[5], [Yes], [No], [No],
),
[
  #table(columns: (auto, auto, auto), inset: 10pt,
  [], [$y$ = Yes], [$y$ = No],
  [$p(a_1="Yes"|y)$], [2/3], [1],
  [$p(a_1="No"|y)$], [1/3], [0],
[$p(a_2="Yes"|y)$], [2/3], [1/2],
[$p(a_2="No"|y)$], [1/3], [1/2],)
])

Consider: $x_"new" = (a_1="Yes", a_2="No") = ("Yes", "No")$

#pagebreak()

#grid(columns: (1.3fr, 1fr),
table(columns: (auto, auto, auto), inset: 10pt,
  [], [$y$ = Yes], [$y$ = No],
  [$p(a_1="Yes"|y)$], [2/3], [1],
  [$p(a_1="No"|y)$], [1/3], [0],
[$p(a_2="Yes"|y)$], [2/3], [1/2],
[$p(a_2="No"|y)$], [1/3], [1/2],), [
  $x_"new" = ("Yes", "No")$

  $p(&y = "Yes"|x_"new") = \
      & frac(abs(y="Yes"), abs(X)) product_(i=1)^n p(x_a_i|y="Yes")$
]
)

#text(size: 23pt)[
$ product_(i=1)^n p(x_a_i|y="Yes") &=
  p(a_1 = "Yes"|y="Yes") * p(a_2 = "No"|y="Yes") \
  &= 2/3 * 1/3 = 2/9 \
  p(y = "Yes"|x_"new") &=
  (|y="Yes"|)/(|X|) product_(i=1)^n p(x_a_i|y) = 3/5*2/9 = 2/15$
]

#pagebreak()

#grid(columns: (1.3fr, 1fr),
table(columns: (auto, auto, auto), inset: 10pt,
  [], [$y$ = Yes], [$y$ = No],
  [$p(a_1="Yes"|y)$], [2/3], [1],
  [$p(a_1="No"|y)$], [1/3], [0],
[$p(a_2="Yes"|y)$], [2/3], [1/2],
[$p(a_2="No"|y)$], [1/3], [1/2],), [
  $x_"new" = ("Yes", "No")$

  $p(&y = "No"|x_"new") = \
      &(|y="No"|)/(|X|) product_(i=1)^n p(x_a_i|y="No")$
]
)

#text(size: 23pt)[
$ product_(i=1)^n p(x_a_i|y="No") &=
  p(a_1 = "Yes"|y="No") * p(a_2 = "No"|y="No") \
  &= 1 * 1/2 = 1/2 \
  p(y = "No"|x_"new") &=
  (|y="No"|)/(|X|) product_(i=1)^n p(x_a_i|y) = 2/5*1/2 = 1/5$
]

#pagebreak()

== Naive Bayes Example

$
p(y="Yes"|x_"new") = 2/15 \
p(y="No"|x_"new") = 1/5 \
$

We choose the max, so we predict $y$ = "No" for $x_"new"$.
