# ALE

<https://github.com/dense-analysis/ale>

The Asynchronous Lint Engine (ALE) is a plugin providing linting (syntax
checking and semantic errors) in Neovim 0.7.0+ and Vim 8.2+ while you edit your
text files, and acts as a Vim Language Server Protocol client.

If you have trouble reading __:help ale__, try the following.

In vim:

```vim
:packloadall | silent! helptags ALL
```

More info with __:ALEInfo__

Enable the linters

```vim
let g:ale_linters = {'markdown': ['rumdl','vale']}
let g:ale_fixers = {'markdown': ['rumdl']}
```

*[ALE]: Asynchronous Lint Engine for Vim
