#import "../config.typ": frontmatter

#let question_counter = counter("question")

#let question(body, title: "") = [
  #question_counter.step()
  *题目 #frontmatter.homework_id\-#question_counter.display().*
  #h(10pt)
  #title \
  #body
]
