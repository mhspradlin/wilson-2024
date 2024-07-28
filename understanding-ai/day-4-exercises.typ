#set page(
  paper: "us-letter"
)

#set document(author: "Mitch Spradlin", title: "Understanding AI Day 4 Exercises")

#align(center)[
= Image Synthesis: Exercises
]

#v(2em)

Using Stable Diffusion web ( #link("https://stablediffusionweb.com/#demo") ) or another image synthesis tool:

+ Generate images related to an occupation such as `doctor` or `teacher`.
  - Are people of certain genders, ethnicities, and ages represented more than others?
  - Based on what you know about how image synthesis models work, why might this happen?
+ The style of particular artists can be emulated using particular prompt inputs. This lists many artists represented in Stable Diffusion: #link("https://supagruen.github.io/StableDiffusion-CheatSheet/")
  - Choose an artist and craft your own prompt to create images in their visual style.
  - How do you think that artist would feel about the image you've created? Would they likely be enthusiastic, upset, indifferent, or something else?

#v(1fr)

#figure(image("figures/warhol-coffee-cup.jpeg", height: 25%), caption: [`coffee cup in the style of andy warhol`])

#figure(image("figures/picasso-dog.jpeg", height: 25%), caption: [`dog in the style of pablo picasso`])
