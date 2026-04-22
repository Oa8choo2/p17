#!/bin/gawk

{
  if ($0 ~ /^*/) {
    printf("* [")
    f = $NF
    for (i = 2; i <= NF-1; i++) {
      printf("%s ", $i)
    }
    printf("](%s)\n", f)
  }
  else {
    print
  }
}

 
function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }
