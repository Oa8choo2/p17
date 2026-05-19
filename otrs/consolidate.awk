#!/bin/gawk
#
#      1     https://docs.hpc.ugent.be/
{
	l[$2] = l[$2] + $1
}

END {
	for (i in l) {
		printf("%7d     %s\n", l[i], i)
	}
}

