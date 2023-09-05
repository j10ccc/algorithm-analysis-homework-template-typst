#import "constants/fonts.typ": font_family
#import "config.typ": frontmatter
#import "layout/divider.typ": divider
#import "layout/headers/index.typ": headers
#import "layout/question.typ": question

#let template(doc) = [
  // globally override style
  #set text(
    font: font_family.default,
    size: 12pt
  )
  #set par(
    leading: 1em
  )
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
      #locate(loc => [
        #if loc.page() != 1 [
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
        ]
      ])
    ],
  )
  #show strong: set text(font: font_family.songti, weight: "bold")

  // document declaration
  #headers
  #doc
]
