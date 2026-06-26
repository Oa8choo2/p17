# new documents

Criteria for new documents:

Consult the workflow text TODO

* Stop! Do **not** create a new document:
  * check first if you can find a good document  
    somewhere else
  * make a link to that location
  * make sure it is permanent: webarchive it

---

* Recycle content from old docs, if any

* should be in plain text
* should be in markdown
* should be in mkdocs or zensical variant of markdown

* avoid using abbreviations and acronyms
* explain all abbreviations and acronyms when you first 
  mention them
  e.g. Knowledge-based Augmented Reality for Maintenance Assistance (KARMA)
* then add the markdown code to add the `<abbr>`-tags:

```markdown
*[KARMA]: Knowledge-based Augmented Reality for Maintenance Assistance     
```

*[KARMA]: Knowledge-based Augmented Reality for Maintenance Assistance     

* file and folder names:
   - all lowercase
   - no 'weird' characters
   - use underscores to delimit words
   - use _detox_ to fix this
   - limit length
   - try to make it explaining itself (not: doc.md)
   - try to make it uniq over the whole site, use these command's to find them:

   ```bash
   cd docs # avoid searching in .git dir and in build dir (= site)
   find -type f -printf '%f\n' | sort | uniq  -d
   find -type d -printf '%f\n' | sort | uniq  -d
   ```


* read your text aloud before commit
* test your document,  
  follow the instructions and  
  confirm, assert that you obtain the expected result
* let your text test by a collegue  
* let your text test by a customer, a newbie, your aunt, mother-in-law, ...

* add meta-information (frontmatter)   

  ```yaml
  ---
  title: A more elaborate title (optional)
  reviewers: Dr Marcus Baw
  audience: all, could be beginner, guru, ... 
  last_updated: 2026 Jul 5
  --- 
  ```


* add labels, categories: 
  jobs, language model, dynamics, finance, ... 
* add information architecture section: 
  * getting started
  * reference
  More see Bran van der Meer
* indicate knowledge level required: beginner, ... guru

* small, preferably all content [above the
  fold](https://en.wikipedia.org/wiki/Above_the_fold)
* atomic, in the sense that the text is about one single subject
* text format: markdown (mkdocs variant)
* encoding: utf-8
* avoid complex, nifty things
  * only jinja variables if really needed and useful
  * no conditional content (e.g. os, site specific)
  * try to use [plain vanilla](https://en.wikipedia.org/wiki/Plain_vanilla)
      markdown
* validated before commit
  * markdown (rumdl)
  * spelling (aspell, codespell)
  * jinja (j2lint)
* conform to style guide
  * try to read the style guide before editing
  * TODO: link to the style sheet
  * while editing think about your readers, what do they really need
