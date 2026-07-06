#!/bin/bash

for i in /etc/ssh/*.pub
 do
  echo -en "\n\n$i\n";
  ls -al "$i" 
  cat -n "$i" | fold
  echo -en "\n --- fingerprint: "
  ssh-keygen -lf "$i";
 done
