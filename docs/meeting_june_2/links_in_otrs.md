---
author: Oa8choo2
created: 20260520
---

# Links in OTRS tickets

## Numbers

When using a query in OTRS that shows us

* queue = ICT / GR /HPC
* state = __any__

(known as __hpc_all__)

we have 13096 tickets (at Wed May 20 08:11:05 CEST 2026)

When adding

fulltext contains "docs.hpc.ugent.be"

we get 56 tickets

=> how can we explain this?  

## Analysis of the tickets

Getting data out of OTRS is not easy.

Ideal would be: a dump of the database (asked but no respons yet)

Scraping a webpage with multiple iframes?
