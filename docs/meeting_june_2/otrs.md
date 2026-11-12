# Analysis of OTRS tickets

Maybe we can find the docs we use most for helpdesk tickets?

## What url's are in HPC tickets?

- a lot of noise from mail footers  
  (are those footers and those links useful in otrs?)
- [not that many links to docs.hpc](links_in_otrs.md)
- no access to database, ergo: some kind of scraping to collect the data  
  [method](get_links_out_otrs.md)

## Per domain

(second colum indicates number of times a link to that domain is used in a ticket)

```text
2       1     arts.kuleuven.be
2       1     bsky.app
2       1     cran.r-project.org
2       1     docs.google.com
2       1     docs.vscentrum.be
2       1     doi.org
2       1     forms.office.com
2       1     github.ugent.be
2       1     pisa.ugent.be
2       1     textiles.ugent.be
2       1     wiki.csi.cuny.edu
2       2     bioinformaticsworkbook.org
2       2     lcp.elis.ugent.be
2       2     vibtrainingandconferences.be
2       2     vscentrum.be
2       3     event.ugent.be
2       3     febresearchday2025.ugent.be
2       3     research.ugent.be
2       3     twitter.com
2       3     users.ugent.be
2       3     wiki.ugent.be
2       4     login.hpc.ugent.be
2       5     filesender.belnet.be
2       5     go.microsoft.com
2       6     apivsc.ugent.be
2       6     soleway.ugent.be
2       7     account.vscentrum.be
2       7     uc.ugent.be
2       8     eur01.safelinks.protection.outlook.com
2      11     github.com
2      13     helpdesk.ugent.be
2      33     eur03.safelinks.protection.outlook.com
2      38     tiktok.com
2      39     youtube.com
2      42     facebook.com
2      42     instagram.com
2      42     linkedin.com
2      45     pep.pxl.be
2      57     pxl.be
2     125     docs.hpc.ugent.be
2     534     ugent.be
```

Tickets processed: 28

## docs.hpc

```text
0       1     https://docs.hpc.ugent.be/account/#adding-multiple-ssh-public-keys-optional
0       1     https://docs.hpc.ugent.be/gpu
0       1     https://docs.hpc.ugent.be/infrastructure/
0       1     https://docs.hpc.ugent.be/interactive_debug/#shared-gpus
0       1     https://docs.hpc.ugent.be/jupyter/
0       1     https://docs.hpc.ugent.be/jupyter/#using-extra-python-packages
0       1     https://docs.hpc.ugent.be/macOS/available_software/
0       1     https://docs.hpc.ugent.be/running_batch_jobs/#modules
0       1     https://docs.hpc.ugent.be/running_batch_jobs/#specifying-the-cluster-on-which-to-run
0       1     https://docs.hpc.ugent.be/sites/hpc_policies/
0       2     https://docs.hpc.ugent.be/troubleshooting/#module-conflicts
0       2     https://docs.hpc.ugent.be/web_portal/
0       3     https://docs.hpc.ugent.be/web_portal/#using-the-hpc-ugent-web-portal
0       5     https://docs.hpc.ugent.be/FAQ/#my-home-directory-is-almost-full-and-i-dont-know-why
0       7     https://docs.hpc.ugent.be/macOS/
0      22     https://docs.hpc.ugent.be/
0      74     https://docs.hpc.ugent.be/software_installation_requests
```
