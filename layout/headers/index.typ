#import "introduction.typ": introduction
#import "title.typ": title
#import "identification.typ": identification
#import "../divider.typ": divider

#let headers(
  homework_id: [0],
  date: [2023.09.04],
  deadline: [2023.9.24],
  time_consume: [],
  intro: [请用 LATEX 编辑所有解答。所有问题请给出简洁的回答，任何冗余的回答可能会得低分。提交文件格式为 PDF]
) = [
  #introduction(date, homework_id)
  #divider

  #title(homework_id: homework_id, deadline: deadline)[
    #intro
  ]
  #divider

  #identification(time_consume)
  #divider
]
