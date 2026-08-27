---
icon: simple/markdown
---

# Markdown in 5min

## Headers

```text
# H1 Header
## H2 Header
### H3 Header
#### H4 Header
##### H5 Header
###### H6 Header
```

## Text formatting

```text
**bold text**
*italic text*
***bold and italic***
~~strikethrough~~
`inline code`
```

## Links and images

```text
[Link text](https://example.com)
[Link with title](https://example.com "Hover title")
![Alt text](image.jpg)
![Image with title](image.jpg "Image title")
```

### Some extra variants

This is the code:

```text
[I'm an inline-style link](https://www.somewebsite.com)

[I'm an inline-style link with title](https://www.somewebsite.com "somewebsite's Homepage")

[I'm a reference-style link][Arbitrary case-insensitive reference text]

[I'm a relative reference to a repository file](../blob/master/LICENSE)

[You can use numbers for reference-style link definitions][1]

Or leave it empty and use the [link text itself]

Some text to show that the reference links can follow later.

[arbitrary case-insensitive reference text]: https://www.somewebsite.org
[1]: http://somewebsite.org
[link text itself]: http://www.somewebsite.com

```

This is the result:

[I'm an inline-style link](https://www.somewebsite.com)

[I'm an inline-style link with title](https://www.somewebsite.com "somewebsite's Homepage")

[I'm a reference-style link][Arbitrary case-insensitive reference text]

[I'm a relative reference to a repository file](../blob/master/LICENSE)

[You can use numbers for reference-style link definitions][1]

Or leave it empty and use the [link text itself]

Some text to show that the reference links can follow later.

[arbitrary case-insensitive reference text]: https://www.somewebsite.org
[1]: http://somewebsite.org
[link text itself]: http://www.somewebsite.com

See <https://gist.githubusercontent.com/emedinaa/28ed71b450243aba48accd634679f805/raw/fff0e8b872079030aacd64d69f0ef1ebcf2a9bee/Markdown%2520reference%2520links>

## Lists

```text
Unordered:

- Item 1
- Item 2
  - Nested item

Ordered:

1. First item
2. Second item
3. Third item
```

## Blockquotes

```text
> This is a blockquote
> Multiple lines
>> Nested quote
```

## Code blocks

````text
```javascript
function hello() {
  console.log("Hello, world!");
}
```
````

## Tables

```text
| Header 1 | Header 2 | Header 3 |
|----------|----------|----------|
| Row 1    | Data     | Data     |
| Row 2    | Data     | Data     |
```

## Horizontal rule

```text
---
or
***
or
___
```

## Task lists

```text
- [x] Completed task
- [ ] Incomplete task
- [ ] Another task
```

## Escaping characters

```text
Use backslash to escape: \* \_ \# \`
```

## Line breaks

```text
End a line with two spaces  
to create a line break.

Or use a blank line for a new paragraph.
```
