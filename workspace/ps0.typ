#import "../main.typ": template
#import "../layout/question.typ": question
#import "@preview/codelst:1.0.0": sourcecode

#show: doc => template(doc)

// t1
#question(
  title: [
    [10 分]
    给定集合 $A = {i + binom(5, i)|i in ZZ, 0 <= i <= 4}$，集合 $B = {3i|i in {1,2,4,5}}$。
  ]
)[
  请分别给出以下运算的结果。\

  #set enum(numbering: "(a)")
  + $A sect B$
  + $|A union B|$
  + $|A − B|$
]

$ A = {1, 6, 12, 13, 9} \ B = {3, 6, 12, 15} $

所以 
$ A sect B &= {6, 12} \
|A union B| &= 7 \
|A − B| &= 3 $

#pagebreak()

// t2
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

#align(center, 
  table(
    columns: (40pt, 40pt, 40pt, 40pt, 40pt),
    rows: (auto, auto),
    inset: 10pt,
    [$X$], [$0$], [$1$], [$2$], [$3$],
    [$p$], [$1/8$], [$3/8$], [$3/8$], [$1/8$]
  )
)

$ E[X] = 1.5 $

#align(center, 
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
    rows: (auto, auto),
    inset: 10pt,
    [$Y$], [$1$], [$2$], [$3$], [$4$], [$5$], [$6$], [$8$], [$9$], [$10$], [$12$], [$15$], [$16$], [$18$], [$20$], [$24$], [$25$], [$30$], [$36$],
    [$p$], 
    [$1/36$],
    [$2/36$],
    [$2/36$],
    [$3/36$],
    [$2/36$],
    [$4/36$],
    [$2/36$],
    [$1/36$],
    [$2/36$],
    [$4/36$],
    [$2/36$],
    [$1/36$],
    [$2/36$],
    [$2/36$],
    [$2/36$],
    [$1/36$],
    [$2/36$],
    [$1/36$],
  )
)

$ E[Y] = 441 / 26 = 147 / 12 $

#pagebreak()

// t3
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

$ A = 100, B = 18 $

A 选项
$ A mod 2 = 0, B mod 2 = 0 $

B 选项
$ A mod 3 = 1, B mod 3 = 0 $

C 选项
$ A mod 4 = 0, B mod 4 = 2 $

所以选 *A*

#pagebreak()

// t4
#question(
  title: [
    [20 分]
    利用数学归纳法证明 $sum_(i=1)^n i^3 = [ (n(n+1)) / 2]^2$ ，其中 $n >= 1$。
  ]
)[]

令
$ F_n = sum_(i = 1) ^ n i ^ 3 = [(n(n + 1)) / 2] ^ 2, n >= 1 $

当 $n = 1$ 时

$ F_1 &= 1 dot 1 \
&= [1 dot (1 + (1 + 1)) / 2] ^ 2 \
&= 1 $

命题成立

假设 $n = k$ 时命题成立，则有 

$ F_k = sum_(i = 1) ^ k i ^ 3 = [(k(k + 1)) / 2] ^ 2, k >= 1 $

令 $n = k + 1$

$ F_(k + 1) &= F_k + (k + 1) ^ 3 \
&= [(k(k + 1)) / 2] ^ 2 + (k + 1) ^ 3 \
&= 1/4 k^4 + 3 / 2 k ^ 3 + 13 / 4 k ^ 2 + 3k + 1 \
&= [((k + 2)(k + 1)) / 2] ^ 2 \
$

所以命题成立

#pagebreak()

// t5
#question(
  title: [
    [15 分]
    利用数学归纳法证明有 $n$ 个节点的图最多只有 $n(n − 1)\/2$ 条边。
  ]
)[]

令 
$ F_n = n "个节点的边数" $

首先考虑, 有 $1$ 个节点的图,最多有 $0$ 条边, 命题成立。

假设 $n = k$ 时公式成立，则有
$ F_k = k(k - 1) \/ 2 $

当 $n = k + 1$ 时， 加入一个新的节点并使之成为完全图,
我们需要让这个新节点和所有其他 $k$ 个节点相连。所以，
要新加 k 条边

$ F_(k + 1)
&= F_k + k \
&= k(k - 1) \/ 2 + k \
&= (k + 1)k \/ 2 $

所以命题成立。

#pagebreak()

// t6
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

#sourcecode(
  frame: none
)[
```js
const count_long_subarrayus = (arr) => {
  if (arr.length < 3) return 0;
  let isInArray = false;
  let count = 0;
  for (let i = 1; i < arr.length - 1; i++) {
    if (arr[i - 1] <= arr[i] && arr[i] <= arr[i + 1]) {
      if (!isInArray) count++;
      isInArray = true;
    } else {
      isInArray = false;
    }
  }
  return count;
}
```
]