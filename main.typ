#import "constants/fonts.typ": font_family
#import "config.typ": frontmatter
#import "layout/divider.typ": divider
#import "layout/doc_header.typ": doc_header
#import "layout/question.typ": question
#import "utils/global_style.typ": *

#set text(
  font: font_family.default,
  size: 12pt
)
#set par(
  leading: 1em
)

#show strong: set text(font: font_family.songti, weight: "bold")

#doc_header

#divider

#align(center, [
  = *习题 #frontmatter.homework_id*
  #v(16pt)
])

*提交截止时间 2023.9.11 : 6PM*。请用 LATEX 编辑所有解答。所有问题请给出简洁的回答，任何冗余的回答可能会得低分。提交文件格式为 PDF。

#divider

*姓名:* #frontmatter.name \
*学号:* #frontmatter.student_number

#divider

#question(
  title: [
    [10 分]
    给定集合 $A = {i + mat(5; i)|i in ZZ, o <= i <= 4}$，集合 $B = {3i|i in {1,2,4,5}}$。
  ]
)[
  请分别给出以下运算的结果。\

  #set enum(numbering: "(a)")
  + $A sect B$
  + $|A union B|$
  + $|A − B|$
]

#pagebreak()

#set page(
  header: [
    #set text(size: 12pt)
    #let page_num = [
      #locate(loc => [
        #loc.page()
      ])
    ]
    #let title = [
      #text(font: font_family.kaiti)[习题]
      #emph[#frontmatter.homework_id]
    ]
    #grid(
      columns: (1fr, 1fr),
      align(left, [
        #locate(loc => [
          #if calc.odd(loc.page()) [
            #title
          ] else [
            #page_num
          ]
        ])
      ]),
      align(right, [
        #locate(loc => [
          #if calc.odd(loc.page()) [
            #page_num
          ] else [
            #title
          ]
        ])
      ]),
    )
  ],
)

#question(
  title: [
    [20 分]
    有 2 个随机变量 $X$ 和 $Y$ 。其中，$X$ 表示抛无偏硬币三次后看到的人头数。$Y$ 表示掷两个无偏六面骰子并将其值相乘的结果。 请计算以下期望值，
  ]
)[
  #set enum(numbering: "(a)")
  + $E[X]$
  + $E[Y]$
]

#pagebreak()

#question(
  title: [
    [15 分]
    令 $A = 600\/6$，$B = 60 mod 42$。以下表达式正确的是?
  ]
)[
  #set enum(numbering: "(a)")
  + $A equiv B(mod 2)$
  + $A equiv B(mod 3)$
  + $A equiv B(mod 4)$
]


#pagebreak()

#question(
  title: [
    [20 分]
    利用数学归纳法证明 $sum_(i=1)^n i^3 = [ (n(n+1)) / 2]^2$ ，其中 $n >= 1$。
  ]
)[]

#pagebreak()

#question(
  title: [
    [15 分]
    利用数学归纳法证明有 $n$ 个节点的图最多只有 $n(n − 1)\/2$ 条边。
  ]
)[]

#pagebreak()

#question(
  title: [
    [20 分]
    数组中相邻的元素如果依次递增，那么这段递增的元素就称为数组的递增子数组。请给出函数 $"count_long_subarrays"(A)$ 的具体实现，该函数返回数组 A 中最长递增子数组的个数，其中$A$ 包含 $n > 0$ 个正整数。
  ]
)[
  *输入：* $A = (1, 3, 4, 2, 7, 5, 6, 9, 8)$ \
  *输出：* $"count" = 2$ \
  因为 A 中最长的递增子数组分别为 $(1, 3, 4)$ 和 $(5, 6, 9)$。
]
