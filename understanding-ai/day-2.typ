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

- What is sentiment analysis
- Kinds of inputs and outputs we're looking for
- Example: Brand image/ad campaign effectiveness, (duolingo?) https://www.determ.com/blog/5-use-cases-of-real-time-sentiment-analysis-for-brand-building/ https://keyhole.co/blog/duolingo-social-media-strategy/
- Techniques: Bag of words, challenges in grammar https://en.wikipedia.org/wiki/Sentiment_analysis
- Exercise: Stump a sentiment analyzer: https://monkeylearn.com/sentiment-analysis-online/
- Can you make something that shows as negative when it is really positive?
- Can you make something that shows as positive when it is really negeative?
- What happens if you have mixed emotions?
