# Algorithm-analysis-homework-template-typst

For Algorithm Analysis And Design course.

## Feature

## Design Principle

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

## Examples

## Contribution

You point out all of layout or render logical bugs(if there is (: )
or advice in issue. If you want to modify code, you should pull a
request for further contribution. It is better to use **git flow**
as your contribution standard.

