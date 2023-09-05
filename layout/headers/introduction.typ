#import "../../constants/fonts.typ": font_family
#import "../../config.typ": frontmatter

#let introduction = [
  #align(left, text(font: font_family.kaiti)[
    算法分析与设计
    _2023_
    秋
  ])

  #grid(
    columns: (1fr, 1fr),
    align(left, [
      *浙江工业大学* \
      *教师:* 程振波 \
    ]),
    align(right, [
      2023.9.04 \
      习题 #frontmatter.homework_id
    ])
  )
]
