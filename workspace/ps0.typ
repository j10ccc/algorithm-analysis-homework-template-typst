#import "../main.typ": template
#import "../layout/question.typ": question

#show: doc => template(doc)

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
