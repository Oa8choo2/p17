# Zensical

Some things on zensical

## OS Error 17

```bash
(p17) repos/github.com/Oa8choo2/p17$ zensical build 
Build started
No issues found
File exists (os error 17)
```

- There is no debug, logging
- Cause: if a file or repo exists with the same name as the markdown file the error is generated and the build fails
- In this case: both the file _repos_ and _repos_.md existed
- We were using the default setting (in zensical.toml): _use_directory_urls = true_  
  This makes "_nice_" urls, that hide the name of the file.
  A file.md file is converted to a file dir with a index.html

### How to prevent this from happening?

- avoid having these double names: _file_ and _file_.md
- (there is another reason why having the same name multiple times is not a good idea)
- Set the use_directory_urls to *false*.
  Now a file.md is converted to file.html
- The use_directory_urls setting controls the directory structure of your documentation site, and thereby the URL format used for linking to pages. See <https://zensical.org/docs/setup/basics/#site_dir>

```
use_directory_urls = false # add this in the [project] block
```


