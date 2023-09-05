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

#show: doc => template(doc)
```

### `question` function

This function receive two arguments.

| arg | comments |
|-----|----------|
|`body`| the question body, rendered in the next line after the question title. (maybe it is not exist) |
|`title`| the question title, rendered in the same line with the question number. |

```typst
#question(title: [
  // question title
  Your first problem is that..
])[
  // question body, if unnecessary, leave it empty
  There is some cases..
]
```

*NOTE*: You do need to pay any attention to the number of
questions, just declare them, the template will handle it.

### Frontmatter

About homework meta data, id, name, edit these in `config.typ`.

### Compile

In the root directory of the repo, run this command to compile.

```sh
$ typst compile workspace/<YOUR_DOC_NAME>.typ --root ..
```

The output pdf file will be generated in workspace with the
same name of source code file.

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

## Contribution

You point out all of layout or render logical bugs(if there is)
or advice in issue. 

If you want to modify code, you should pull a
request for further contribution. It is better to use **git flow**
as your contribution standard.

