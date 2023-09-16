#let title(
  body,
  homework_id: [0],
  deadline: [2023.9.11 : 6PM]
) = [
  #align(center, [
    = *习题 #homework_id*
    #v(16pt)
  ])

  *提交截止时间 #deadline*。
  #body
]
