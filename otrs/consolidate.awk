#!/bin/gawk
#
#      1     https://docs.hpc.ugent.be/
{
	# per domain
	split($2, ar, "/")
	if (length(ar[3]) < 1) next
	if (length(ar[3]) < 256) {
		domain = tolower(ar[3])
		gsub(/^www./, "", domain)
	}
	domains[domain] = domains[domain] + $1 

	l[$2] = l[$2] + $1
}

END {
	for (i in l) {
		printf("0 %7d     %s\n", l[i], i)
	}

	print "1 per domain"
	for (j in domains) {
		printf("2 %7d     %s\n", domains[j], j)
	}
}

