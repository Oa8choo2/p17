---
author: Eliza.Depoorter@UGent.be
date: 20260430
title: EL HPC docs website - homework
description: |
  Think about which texts we really need (and why).
  Please try and think 'from scratch’ what the beginning user would need.
---

## Which texts we really need (and why) (EL)

TOC

- About the VSC Accountpage (AP)
- Requesting a Vlaams supercomputer Centrum (VSC) account
- Policies
- Web portal
- How to ask for support
- Overview of clusters
- Quota
- SSH page

### About the VSC Accountpage (AP)

This about <https://docs.vscentrum.be/accounts/vsc_account.html>

Short description of what **the VSC accountpage** is and what users can
do there:

- request a VSC account  
  (link to 'Request a VSC account' page - can be the one of vscentrum  
<https://docs.vscentrum.be/accounts/vsc_account.html#new-vsc-account>  
  but watch out, the UGent tab there refers to  
  <https://www.ugent.be/hpc/en/access>)
- monitor their quota
  (link to 'Quota' page)
- request group/Virtual Organisation (VO) membership  
  (link to 'VO' page or <https://docs.vscentrum.be/accounts/vo.html>)
- request new VO
  (link to 'VO' page or <https://docs.vscentrum.be/accounts/vo.html>)
- add additional SSH keys
  (link to 'SSH' page)

Mention 1-hour delay for actions on AP to become active on the system

Why - because support often gets requests for things users can do themselves

### Requesting a Vlaams supercomputer Centrum (VSC) account

- Steps to request a VSC account
- By default should be **without SSH key**.
- Option to create an SSH key (link to 'SSH' page)
- Link to 'Policies' page for who can get an account

Partly covered in
<https://docs.vscentrum.be/accounts/vsc_account.html#applying-for-your-vsc-account>
(but watch out, the UGent tab there refers to
  <https://www.ugent.be/hpc/en/access>)

Why - first step to get started with Tier-2 UGent is to get a VSC account

### Policies

- Overview of who can get a VSC account
  can we link to this page:
  <https://www.ugent.be/hpc/en/access/policy/access>?
- Acknowledgement for publication when users use HPC-UGent
- Fairshare policy for job scheduling
  can link to <https://slurm.schedmd.com/fair_tree.html> for more
  details
  (or <https://slurm.schedmd.com/SLUG19/Priority_and_Fair_Trees.pdf>?)

Why - support often gets questions on who can get access and how

### Web portal

Page on how to connect to and use the web portal:

- potential need for firewall to connect
  (maybe link to docs.vscentrum
<https://docs.vscentrum.be/security_measures_20200520.html>)
- file browser for upload/download
- jobs overview
- shell access to cluster
- interactive apps
- submit support ticket from portal

Why - we're pushing more people to use the web portal so there must be
a page to get them started (especially beginners)

### How to ask for support

Page with list of things to provide when contacting us + <hpc@ugent.be>

Content below taken from one of our prefab answers in OTRS:

Please help us help you by providing more information in a reply to
this message (if it is applicable to your question, or not yet
provided):

- Your VSC account ID
- Which software application(s) you are using

  (which modules you are loading, etc.)

- A short description of what you want to achieve
- Name of cluster(s) being used
- Relevant job ID(s)
- The command used to submit the job(s)
- All error and/or warning messages that may be relevant
- Location of the job script(s) you are using in your VSC account
- Location of the job output files in your VSC account
  (both regular output + errors/warnings)

Link to this page from bottom of every other page

Why - if more users would provide relevant info in their first message
 it would save support a lot of time

### Overview of clusters

- Overview of clusters we currently have
  - their specs
  - subdivision into CPU, GPU and debug
- Info on user limits for debug cluster
- What is our default cluster

Why - people need to know which clusters we have
 to choose which one fits their needs

### Quota

- Describe the personal quota per user
- in $VSC_HOME, $VSC_SCRATCH and $VSC_DATA
- Disclaimer that there is NO BACKUP
- link to 'UGent shares' page to give them a way to back up
- Link to 'VSC Accountpage' for consulting their usage
- What if they run out of storage: clean up or join a VO
  (link to 'VO' page)
- What if they get message 'Diskspace full' but quota not reached:
   inode limit
- Useful commands how to check for big (hidden) files

Why - support gets lots of questions on storage issues

### UGent shares

- Info on how to access UGent shares on our systems:
  globus/kinit
- Disclaimer that this is only for staging and only on login nodes,

  not for live computations

Why - very UGent specific and users need instructions to do it right.

### SSH

- Start with some kind of disclaimer that
  default access is via web portal
  (link to 'Web portal' page)
- If they want SSH they'll need to have some basic linux knowledge

  and we can't hold their hand on that.

- Can link to
    <https://docs.vscentrum.be/accounts/generating_keys.html#cryptographic-keys>
    it has examples on how to create keys in windows, linux and mac.
  - Link to 'WSL' page for windows users that don't want to use powershell.
- Mention how to upload new key to AP (link to page 'VSC Accountpage')
- How to connect via ssh to our systems
- Fingerprints of login.hpc.ugent.be for users to verify
- generated by us, on the website
- command to verify before making a connection

    ```bash
    ssh-keyscan login.hpc.ugent.be | ssh-keygen -lf -
    ```

Why - for users that want shell access via SSH, we should try to cover only our
UGent-specific stuff

### Windows Subsystem for Linux (WSL)

- **Very short** description of what WSL is +
  link to external resources how to set it up
- Disclaimer that we don't provide support on this
- Link to 'SSH' page for how to create ssh keypair
- Tip for combining it with UGent VPN:
  - needs virtioproxy mode and
  - must start VPN first, then WSL2

Why - for windows users that can't/won't use powershell,
the UGent VPN thing is again very UGent specific

### Software availability

- Describe module concept
- How to check if specific software is available:
  - overview of module commands
  module avail, module show, module spider, ...
- Indicate that not all software is available on all clusters

  (link to 'Overview of clusters' page)

- How to request more software
  - install request form (+ link) or
  - install it yourself
    (link to 'Installing software yourself' page)
- Combining multiple modules:
  (link to 'Software compatibility' page)

Why - users have to be able to check which software is available
otherwise they won't use our systems

### Software compatibility

- Link to 'Software availability' page for basic info
- Explain toolchain version concept briefly
  (or link to external source if there is a good one)
- If combining multiple modules they need same toolchain version
- Example on how to test in a shell session on login node on target
  cluster by doing 'module load a' and 'module load b'
- Give table of which GCCcore is compatible with which foss for example
- What if there is no possible combination of software you want?
  request software install or DIY

Why - combining software is not always trivial,
it deserves some explanation

### Installing software yourself

- Warn to not use $VSC_HOME for installing because of quota issues

  (link to 'Quota' page)

- Python: Warn to use python venvs instead of conda
  (link to 'Python virtual environments' page)
- R: describe how and where custom user installs end up,
  that they may need to repeat this per cluster
- Mention EasyBuild can be used by individual users to install in VO
  (link to 'VO' page)

Why - if we raise the bar to request a software install,
we must provide users with info on how to do it themselves
(if they want to)

### Python virtual environments

Section on how to use the module vsc-venv for creating virtual
environments

Why - same as above for "Installing software yourself"

### Submitting jobs

- Step-by-step how to submit: swap to right cluster, qsub job script,
qstat for status, default name & location of err/output files
- Overview of job script commands (qsub, qstat, qdel, ...) that can be
used to check job status in a terminal
- Link to page 'Job script' for info on job scripts
- Add link to page 'Web portal' section 'Shell access to cluster' so we
can point web portal users to how to get a terminal

Why - even though focus is on portal, **slurm** is still the motor
behind all jobs

### Job scripts

- Explain #PBS flags (Portable Batch System)
- Explain basic parts
  - loading modules,
  - copying data,
  - running program,
  - copying data back
- Example of a minimal job script for single-core and multi-core

Why - same reason as above 'Submitting jobs'

### Teaching and training

- Overview of what we offer for teaching and training
- List of info they need to provide to us

Why - used quite a bit by teachers right now and they usually do copy
paste the list of info we need into the email

### Virtual Organisations (VO)

- Actually I don't know if we need a separate page on that because it's
pretty well described in <https://docs.vscentrum.be/accounts/vo.html>
- Nevertheless we do often refer users to a VO because either they need
more storage, or they are waiting in the queue because someone in the
default gent VO ate up all the **fairshare**

### FAQ/troubleshooting

The issues I see most often:

- how can I get more storage?
- home directory full (hidden files)?
- my job is still in the queue after x hours why is it not starting?
- can I get more than 72h walltime?
- OOD: why did my job start and immediately complete?

Why - makes it easy for support to point users to the right page with
just the info they need
