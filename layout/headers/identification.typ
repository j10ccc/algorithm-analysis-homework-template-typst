#import "../../config.typ": frontmatter

#let identification(time_consume) = [
  *姓名:* #frontmatter.name \
  *学号:* #frontmatter.student_number \
  *作业总耗时:* #time_consume
]
