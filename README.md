# Algorithm-analysis-homework-template-typst

For Algorithm Analysis And Design course homework.

## Usage

> Before use this template, you should learn a bit
> [typst](https://typst.app) language syntax, like function
> call, text render syntax. It is some different from LaTeX.

Clone the repository.

Before build output file, you should create your
own homework document, use template also :).

Create a `.typ` file with casual name in "workspace"
directory. There has been a example file in that directory,
maybe you can refer it.

### Prefix Snippet

The document source code should contains below prefix snippet.
Those code include the whole paper template, and include the
important function `question`.

```typst
#import "../main.typ": template
#import "../layout/question.typ": question

#let config = (
  homework_id: [0],
  date: [2023.9.04],
  time_consume: [xxx],
  deadline: [2023.9.24 : 6 PM],
  intro: [本次习题主要涉及递归算法以及递归函数求解。请用 LATEX 编辑所有解答。所有问题请给出简洁的回答，任何冗余的回答可能会得低分。提交文件格式为 PDF。]
)

#show: doc => template(doc, config)
```

### `question` function

This function receives two arguments.

| arg | comments |
|-----|----------|
|`body`| the question body, rendered in the next line after the question title. (maybe it is not exist) |
|`homework_id`| the number of this homework, it appears like `Question <homework_id>_<question_id>`. this can be omitted. |
|`title`| the question title, rendered in the same line with the question number. |

```typst
#question(
  homework_id: "0",
  title: [
    // question title
    Your first problem is that..
])[
  // question body, if unnecessary, leave it empty
  There is some cases..
]

// Type your answer here.

// Create a new page if needed.
#pagebreak()
```

**NOTE**: You don't need to pay any attention to the number of
questions, just declare them, the template will handle it.

### Code block

If you need to write some code, use
[codelst](https://github.com/typst/packages/tree/main/packages/preview/codelst).

````typst
#sourcecode(frame: none)[
```typst
hello *world*
```
]
````

### Frontmatter

About homework meta data, id, name, edit these in `config.typ`.

### Compile

#### For single file

In the root directory of the repo, run this command to compile.

```sh
$ typst compile workspace/<YOUR_DOC_NAME>.typ --root ..
```

The output pdf file will be generated in workspace with the
same name of source code file.

#### For multiple files

All pdf document files will be compiled in `/output` after running
the command.

```
$ make
```

## Design Principle

If you are interested in the structure of the template of
**Typst**, you can read the design principle.

Define components or layout in single file and a directory.

In a directory, there is always a `index.typ`. It declare a
identical name variable(`content`) to combine all components
in it's directory. You can declare components order or mixin
atom components.

```typst
import "layout/divider.typ": divider
#divider

// or
import "layout/headers/index.typ": headers
#headers

// it is not recommend to use a inner layout component
import "layout/headers/title.typ": title
#title
```

## Font

The font family used in compile are declared in
`constants/fonts.typ`. The two **Fandol font**(mostly used
in _ctex_) can be download in this
[repo](https://www.ctan.org/tex-archive/fonts/fandol). The
`default` font, you can update to your favorite font available
in you os.

## Examples

A real compile example `workspace/ps0.typ` is created.

## Roadmap

- Style
  - Adjust `raw` block colorset

## Contribution

You can point out all of layout or render logical bugs(if there is)
or advice in issue. 

If you want to modify code, you should pull a
request for further contribution. It is better to use **git flow**
as your contribution standard.