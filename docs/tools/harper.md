# Harper

[The Free Grammar Checker That Respects Your Privacy][harper]

```bash
harper-cli --dialect=british __file__
```

See <https://github.com/Automattic/harper/discussions/2341>
and  

```bash
$ harper-cli lint --help
Lint provided documents

Usage: harper-cli lint [OPTIONS] [INPUTS]...

Arguments:
  [INPUTS]...
     The text or file you wish to grammar check.  
     If not provided, it will be read from standard input

Options:
  -c, --count
     Whether to merely print out the number of errors encountered,  
     without further details. Only valid with the default output format.
```

Note: **not** this harper: <https://docs.harperdb.io/>

Look at <https://gribnau.dev/posts/harper-cli/>  
and <https://writewithharper.com/docs/integrations/language-server>

[harper]: https://writewithharper.com/docs/integrations/language-server
