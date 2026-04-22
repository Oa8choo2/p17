# j2lint

Linter for Jinja code

See https://github.com/aristanetworks/j2lint

## How to use

Check one file of the type markdown, with the extension md.
Without the correct file extension j2lint will silently do nothing.

```bash
j2lint --extensions=md file.md
```


```bash
#!/bin/bash

set -exv 

# the correct extensions we want j2lint to process
extensions="md,yml,py,txt,html,htm,pbs,sh"

# use a similar regex to limit the files 'find' will list
myregex='.*\.md$\|.*\.yml$\|.*\.py$\|.*\.txt$\|.*\.htm[l]$\|.*\.pbs$\|.*\.sh$'

# find all matching files
find . \
        -type f \
        -regex "${myregex}" 

myexec="-exec j2lint --extensions=${extensions} "  
echo "${myexec}"

# use find to locate all files we want 
# and exclude some files and directories
find . \
        -name "available_software" -prune \
     -o -name ".git" -prune \
     -o -name ".rumdl_cache" -prune \
     -o -name ".ruff_cache" -prune \
     -o -name ".venv" -prune \
     -o -name ".gitignore" -prune \
     -o -type f \
        -regex "${myregex}" \
        -printf "\n%h/%f " \
     ${myexec} '{}' \;
```

## Results

* +- 1800 errors found
* A lot of these are in markdown files, they are fixable with a sed script
* Some bash (or pbs) files are also reported, most of the time these are false
  positives. They can be fixed with an exception rule for j2lint.
  Example:

  ```bash
  {# j2lint: disable=S6}
  ```
* Python files are also reported, for this pylint or ruff are better tools  
