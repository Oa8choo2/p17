#!/bin/gawk
#
# replace number strings by random number string


#awk 'match($0, /([0-9]+)/, m) {print m[1]}'
#
{
# 	print "-- " $0
# 	for (i = 1; i <= NF; i++) {
# 	       if (match($i, /([0-9]+)/, m)) {
	s = $0 	       
	start= 1
	mm = 0
	while (match(s, /([0-9]+)/, m)) {	       
		       mm = 1 
		       before = substr(s, start, RSTART-1)
		       printf("%s", before)
		       l = length(m[1])
		       n = substr(int(rand() * 10000000000000), 1, l)
		       # print m[1], " -> ", n
		       printf("%s", n)  
                       s = substr(s, RSTART + RLENGTH)
		       # print "s: ", s
       }	
       if (mm == 0) printf("%s", $0)
       printf("\n")
}

# s = $0
#   while (match(s, /([0-9]+\.[0-9]+) ops\/s/, m)) {
#      print m[1]
#      s = substr(s, RSTART + RLENGTH)
#   }
# https://stackoverflow.com/questions/65574161/gawk-match-function-parameter-as-regular-expression
