#!/bin/gawk

#  vim: set tabstop=4 shiftwidth=4 textwidth=0 expandtab :

# input: output of find command
# delimiter: slash (/)

{ 
  # skip nonrelevant dirs
  if ($2 ~ /.venv/) next
  if ($2 ~ /.vale/) next
  if ($2 ~ /.git/) next
  if ($2 ~ /.github/) next

  # following dirs are best cleared before build
  if ($2 ~ /.cache/) next	
  # if ($2 ~ /site/) next
  if ($2 ~ /xdocs/) next

  if ($NF ~ /.+~$/) printf("rm -i %s\n", $0)

  # search duplicates without path and case indifferent
  fn = tolower($NF)
  duplicatefn[fn]++
  pathsfn[fn] = sprintf("%s\t%s\n", pathsfn[fn], $FN)

  # search duplicates without extension
  n = split(fn, ar, ".")
  ext = sprintf(".%s", ar[n])
  fne = fn
  gsub(ext, "", fne)
  print "!! " fn, ext, fne
  duplicatefne[fne]++
  pathsfne[fne] = sprintf("%s\t%s\n", pathsfne[fne], $FN)
  

  print
}

END {
  PROCINFO["sorted_in"] = "@ind_str_asc"
  print "Duplicates:"
  for (i in duplicatefn) {
    if (duplicatefn[i] > 1) {
      printf("%3d %s\n", duplicatefn[i], i)
      printf("%s\n", pathsfn[i])
    }
  }
  print "Duplicates without extensions:"
  for (i in duplicatefne) {
    if (duplicatefne[i] > 1) {
      printf("%3d %s\n", duplicatefne[i], i)
      printf("%s\n", pathsfne[i])
    }
  }
}

