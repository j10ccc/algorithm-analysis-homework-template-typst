#import "../config.typ": frontmatter

#let question_counter = counter("question")

#let question(
  body,
  title: "question title",
  homework_id: "0"
) = [
  #question_counter.step()
  *题目 #homework_id\-#question_counter.display().*
  #h(10pt)
  #title \
  #body
]
