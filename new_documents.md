# new documents

Criteria for new documents:

* read your text aloud before commit

* small, preferably all content [above the
  fold](https://en.wikipedia.org/wiki/Above_the_fold)
* atomic, in the sense that the text is about one single subject
* text format: markdown (mkdocs variant)
* encoding: utf-8
* avoid complex, nifty things
    * only jinja variables if really needed and usefull
    * no conditional content (e.g. os, site specific)
    * try to use [plain vanilla](https://en.wikipedia.org/wiki/Plain_vanilla)
      markdown
* validated before commit
    * markdown (rumdl)
    * spelling (aspell, codespell)
    * jinja (j2lint)
* conform to style guide
    * try to read the style guide before editing
    * while editing think about your readers, what do they really need 
