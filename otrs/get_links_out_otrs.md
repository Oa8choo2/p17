# Get docs.hpc links out of otrs

Note: having a link in the mail footer to docs.hpc
does not help ...
Also: why is it useful to have this footers anyway in otrs?

* open otrs
* run query docs.hpc
  fulltext = "see https://docs.hpc.ugent.be"
* open ticket
* use Firefox extension [Web Developer](
https://chrispederick.com/work/web-developer/)
to view the link information
* save that page locally
* grep the links with

```bash
$ grep 'https://docs.hpc'  2026041360000558\ —\ Navragen\ HPC-infrastructuur\ voor\ PISA-onderzoek.html 
    <li><a target="_blank" rel="noreferrer" href="https://docs.hpc.ugent.be/software_installation_requests">https://docs.hpc.ugent.be/software_installation_requests</a></li>
    <li><a target="_blank" rel="noreferrer" href="https://docs.hpc.ugent.be/infrastructure/">https://docs.hpc.ugent.be/infrastructure/</a></li>
```

* get the clean links, strip the html tags

```bash
$ grep 'https://docs.hpc'  2026041360000558\ —\ Navragen\ HPC-infrastructuur\ voor\ PISA-onderzoek.html  | sed -e 's/<[^>]*>//g'  | sort | uniq -c 
      2     https://docs.hpc.ugent.be/
      2     https://docs.hpc.ugent.be/infrastructure/
      2     https://docs.hpc.ugent.be/sites/hpc_policies/
      5     https://docs.hpc.ugent.be/software_installation_requests
      2     https://docs.hpc.ugent.be/web_portal/
```

