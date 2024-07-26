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

#align(center + horizon)[Day Two]

// day 5 add paths to superintelligence and kinds of superintelligence, goal choosing exercise?

#pagebreak()

= Recommenders

#figure(image("figures/amazon-recommendations.jpeg", height:80%))

== Overview

- "You don't know what you don't know"
  - News, music, videos
- Serendipity
  - _Unplanned fortunate discovery_
  - Drive users to return to a platform
  - Social media, online shopping, music
- Filters the entire data set into a subset the user hopefully is interested in

#pagebreak()

== Approach: Collaborative Filtering


#grid(rows: (auto, 1fr), gutter: 10pt,

[
- Recommend things liked by other similar people
- Uses explicit (ratings) or implicit (purchase history) data
],
figure(image("figures/collaborative-filtering.png"))
)

#pagebreak()

== Example: Amazon Item-to-Item

#figure(image("figures/amazon-item-to-item.png", height: 80%))

== Problems

- *Cold Start* --- For new people, not enough data to make good recommendations
- *Scalability* --- High-dimensional data, with many people it's challenging to find similar people
- *Sparsity* --- Doesn't work well if most items have no rating or preference data

#pagebreak()

#grid(rows: (auto, 1fr), gutter: 30pt, [
== Approach: Content-Based Filtering
], [
#grid(columns: (1fr, 1fr),[
- Uses attributes of the items and user's preferences
- Tunes the model from results
- Some preferences are weighted as more important than others
], figure(image("figures/content-based-filtering.jpeg")))
])
#pagebreak()

== Example: Pandora Radio

#columns(2)[
#figure(image("figures/pandora.png", height: 87%))
- Attributes of songs from Music Genome Project
- Likes, dislikes, skips used to model user preferences
#figure(image("figures/pandora-why.png"))
]

#pagebreak()

== Problems

- Doesn't work well across categories
  - Movie preferences don't clearly translate to news
- Can continue to recommend the same kind of thing
  - Variety is desirable for many domains, like music
- Requires accurate and detailed item attributes
  - Amazon sells tens of millions of different products

#pagebreak()

== Hybrid Approaches

Most real-life systems use a combination of collaborative, content-based, and custom filtering.

#figure(image("figures/netflix-hybrid.png", height: 61%))

== Example: Netflix

- Collaborative filtering: Recommends based on other people who liked similar shows
- Content-based filtering: Recommends based on genre, categories, actors, release year, etc.
- Custom filtering: Time of day you watch, what device, how long you watch
- Asked to choose titles you like at signup (cold start)
- Recent preferences given more weight

#pagebreak()

== Examples

- What are some examples of recommender systems in your daily life?
- How do these systems use collaborative or content-based filtering?
- Would that product be better or worse without a recommender system?

#pagebreak()

== Group Exercise

- Read the provided article: #link("https://tinyurl.com/aicase2023")
- Split into groups and discuss:
  - What harmful outcomes can recommender systems affect on individuals? On societey?
  - What responsibility should organizations that use recommender systems have to mitigate harm?
  - How can society mitigate the possible harms?
- We'll talk about what each group discussed as a class

#pagebreak()

= Sentiment Analysis

#align(center + horizon, image("./figures/sentiment-analysis-hero.jpeg", height: 80%))

#pagebreak()

= Sentiment Analysis

Systematically identify, extract, quantify, and study emotional states and subjective information.

#pagebreak()

= Inputs and Outputs

#grid(columns: (1fr, 1fr), [
Typical inputs:
- Product reviews
- Posts, comments
- Customer complaints
],[
Outputs:
- *Polarity* --- Positive, Negative, or Neutral
- Specific emotions
- Subjectivity vs. Objectivity
])

#pagebreak()

= Inputs and Outputs

#quote(block: true)[
"I love this phone!"
]

Polarity: Positive

#quote(block: true)[
"I love warning people about this phone!"
]

Polarity: Negative

#pagebreak()

= Example: Duolingo

#align(center+horizon, image("./figures/duo.png", height: 80%))

#pagebreak()

= Duolingo

#columns(2)[
#align(center + horizon, image("./figures/duo-social.png", width: 100%))

    Like most corporations with a social media strategy, Duolingo uses sentiment analysis to
assess how effective its social media posts are.
]


#pagebreak()

= Duolingo

- Playful digital presence, aimed at 16-34 year olds
- Trendjacking
- Prioritize entertainment (broccoli in pizza)
- Personificaion of mascot
- Consistent storylines
- Direct audience engagement

#pagebreak()

#align(center + horizon, image("./figures/duo-twitter.png"))


#pagebreak()

= Bag of Words

`John likes to watch movies.`

#table(columns: (1fr, 1fr, 1fr, 1fr, 1fr), align: center + horizon,
    [john], [likes], [to], [watch], [movies],
    [1], [1], [1], [1], [1])

`Out of sight, out of mind.`

#table(columns: (1fr, 1fr, 1fr, 1fr), align: center + horizon,
    [out], [of], [sight], [mind],
    [2], [2], [1], [1])

#pagebreak()

= Bag of Concepts

Apply a weight to each word, then sum them.

#table(columns: (1fr, 1fr, 1fr, 1fr, 1fr), align: center,
    [like], [love], [hate], [return], [...],
    [0.2], [0.6], [-0.2], [-0.1], [...])

`I like this product` #sym.arrow.r $0 + 0.2 + 0 + 0 = 0.2$

`I love this product` #sym.arrow.r $0 + 0.6 + 0 + 0 = 0.6$

Can you think of problems with this approach?

#pagebreak()

= Challenges

- I do not dislike this.
- Sometimes I hate shoes, but I like these.
- This lasted two days, TRULY AMAZING JOB, keep it up!
- This horror movie was unsettling.
- You should see their decadent dessert menu.
- I love this, but would not recommend it to friends.
- They've got that rizz.

#pagebreak()

= Stump an Analyzer

https://freeaitools.dev/sentiment-analysis

- Can you make something that shows as negative when it is really positive?
- Can you make something that shows as positive when it is really negative?
- What happens if you have mixed emotions?
- Does it handle slang correctly?

= Affective Computing

Sentiment analysis is one piece of the overall field of Affective Computing.

Read the provided article and we will have an open discussion:
- What current and potential applications seem useful?
- What applications have the potential to be problematic?
