---
title: ssh
description: incubator version, draft
nextreview: 20270706
version: 2026/07/06 11:21:21
---

## Secure Shell (SSH)

Ssh is a command you must run in a terminal:
- start a terminal
- type ssh

## Connecting to HPC UGent with SSH

You can connect to HPC UGent using the Secure Shell Protocol (SSH), which
provides a secure channel over an unsecured network.

> 💡 The recommended way to connect to HPC UGent is by using the web portal.  
> For most applications you do not need to use SSH.  
> If you want to use SSH you'll need some basic linux knowledge. 


## SSH as a Linux command

SSH is standard available on all Linux installations.
You can use the standard ways on Linux to get more information on SSH:

- man page: the man pages on **[ssh][ssh]**, **[ssh_config][ssh_config]** and **[ssh-keygen][ssh-keygen]** [^1]
- help parameter: ssh has no -h or --help parameter, just start ssh without any
  parameter to get a short explanation

```bash
$ ssh
usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface] [-b bind_address]
           [-c cipher_spec] [-D [bind_address:]port] [-E log_file]
           [-e escape_char] [-F configfile] [-I pkcs11] [-i identity_file]
           [-J destination] [-L address] [-l login_name] [-m mac_spec]
           [-O ctl_cmd] [-o option] [-P tag] [-p port] [-R address]
           [-S ctl_path] [-W host:port] [-w local_tun[:remote_tun]]
           destination [command [argument ...]]
       ssh [-Q query_option]
```

- any place on internet where you normally get your linux information from will
  have something on ssh.  

### Ssh on macOS / Apple

Follow the instructions for Linux.
Your .ssh folder, where your key pair is stored is similar to /Users/macOSUsername/.ssh/

### Ssh on Windows

Follow the instructions for Linux.
Your .ssh folder, where your key pair is stored is similar to C:\Users\%username%\.ssh

### Why do you need this

You need an easy and secure way to connect to the hpc infrastructure.  
You can compare it to HTTPS which secures your connection while browsing.

With ssh you’ll get the impression that you are working directly on the hpc
infrastructure, as if you were right there.

### What is it

Ssh is a tool that allows you to work on a remote system, while all your
communication to and from the remote server are encrypted.
This is very important to protect your research data.  
It supports different ways to authenticate.  
We use the **key-based authentication** (not the password authentication).  
You need a key pair -- a private key and a public key -- to do this.

Ssh is security software, it works only in a secure way if it is up-to-date and
correctly configured.

It is widely used and one can do **[interesting][mitre]** things if the key pair is
obtained or if the version you use [contains a bug][opensshcves] or is wrong configured.

If you are consulting info on ssh, check if the version that is used is no more
than one year old.

### Check the version of the ssh client you are using

Most often you’ll use an OpenSSH client.  
Check the version with:

```bash
$ ssh -V  # command run on July 6, 2026 on Ubuntu 26.04
OpenSSH_10.2p1 Ubuntu-2ubuntu3.2, OpenSSL 3.5.5 27 Jan 2026
```

Compare the output of your ssl client to
<https://www.openssh.org/releasenotes.html>.
On top of that page you’ll find the most recent version.  
If your version is more than one year older than that version upgrade your
software (or ask your system administrator to do so).

### Making and maintenance of SSH keys

You must make the key pair yourself.  
It is recommended to make a separate key pair for each remote server you connect
to. Example a key for the VSC Gent server (login.hpc.ugent.be) and another key
pair to connect to the git server of the UGent.  
The private key is private, no one else needs it and should be able to read it.  
It must be protected by a password.  
That password is a kind of multifactor authentication (MFA).

#### Making your key pair

```bash
ssh-keygen -t ed25519 \  # recommended key type anno 2026
           -f ~/.ssh/your-key-filename \ # maybe include vsc in the filename
           -C "your-key-comment"  # add the year you made the key
           # do NOT add your username or other personal information
```

During the generation of the keys, the keygen tool will ask for a password to
protect the private key.

Enter a new complex password with a minimum length of 15 characters (See
[Nist]).

Add your password to your passwordmanager (You are using a [password manager][passwordmanager],
isn’t it?)

### Add your public key to the HPC infrastructure

You can upload your public key via the [VSC account webpage][vscaccount].  
Before you can do this, you need a VSC account.  
Consult the [instructions to obtain a VSC account][obtainvsc] page.

### Maintenance of your ssh keys

It is recommended to rotate your keys on regular basis or if a security issue happend.  
In that case you should
- make a new key pair, conform to the [latest security advice][bsi]


### Other commands: scp, sftp, and rsync a.k.a. sisters of ssh

These commands are all commands to help you transfer to and from the HPC infrastructure.
They all rely on ssh, as soon you can ssh to a remote server they should work too.

- scp is very similar to normal copy commands
Following command will copy a local file to the remote server in the folder /tmp

```bash
scp mylocalfile user@remote_server:/tmp
```

- sftp is more advanced and is **interactive**
To start an sftp session type:

```bash
$ sftp user@remote_server
```

A command prompt is presented:

```bash
sftp>
```

To get help type the question mark

```bash
sftp> ?
Available commands:
bye                                Quit sftp
cd path                            Change remote directory to 'path'
...
```

- rsync is advanced and **not interactive**

Following command will sync the local folder /tmp/localdir with the remote folder /tmp/remotedir.
If the target directory does not it exist it will be created.
If the folders were synced before only the changes since then will be copied.

```bash
rsync -va /tmp/localdir/ user@remote_server:/tmp/remotedir/
```

Both sftp and rsync have the possibility to resume actions.

Consult the man pages:

[scp(1)](https://man7.org/linux/man-pages/man1/scp.1.html)
[sftp(1)](https://man7.org/linux/man-pages/man1/sftp.1.html)
[rsync(1)](https://man7.org/linux/man-pages/man1/rsync.1.html)

## Login to HPC infrastructure

**Log in securely** without a password:

```bash
ssh username@remote_host_address
```

For HPC UGent this becomes

```bash
ssh __username__@login.hpc.ugent.be
```

Replace the username by your own VSC username

**What happens next:**

* If it’s your first time connecting, you’ll see a warning asking if you trust
  the host.

```bash
  The authenticity of host 'sdf.org (205.166.94.16)' can't be established.
ED25519 key fingerprint is: SHA256:ZjwbO7AU8rHJExYrmZS2LqGZ7WfdoELfMrF54W92PYA
This host key is known by the following other names/addresses:
    ~/.ssh/known_hosts:830: tty.sdf.org,205.166.94.4
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

If you are sure the fingerprint is identical to what you would expect, answer with 'yes'.



---

To close the connection you type 'exit'.  


### Solving problems

#### Try a connection without other configuration

Remove all loaded keys from the agent

```bash
ssh-add -D
```

Start a new ssh session with
- explicit identity file: `-i ~/.ssh/vsckey`
- explicit user@host: `vsc123456@login.hpc.ugent.be`
- verbose session: `-v`
- avoid using any config file: `-F /dev/null`
- avoid using the agent: `-o IdentityAgent=none`

```bash
ssh -F /dev/null -v -i ~/.ssh/vsckey vsc123456@login.hpc.ugent.be -o IdentitiesOnly=yes
```

Have a close look at the output of that command, it might help you to a solution.
If not send the output to the HPC helpdesk.

#### Try to ssh to another ssh server

At sdf.org a public ssh server is available.
Try to connect with

```bash
ssh new@sdf.org
```

If you get to the menu on that server you know your ssh (client) config is working in general.

#### Verify the fingerprints before making a connection

```bash
  ssh-keyscan login.hpc.ugent.be | ssh-keygen -lf -
```

☞ Note: this still leaves you vulnerable to a MITM attack.
You should check the fingerprints provided by the owner of the server you connect to.
For HPC UGent once you are logged in you can check the keys on the server with following script:

```bash
#!/bin/bash

for i in /etc/ssh/*.pub
 do
  echo -en "\n\n$i\n";
  ls -al "$i" 
  cat -n "$i" | fold
  echo -en "\n --- fingerprint: "
  ssh-keygen -lf "$i";
 done
```

On July 6, 2026 the fingerprints were:
4096 SHA256:W8Wz0/FkkCR2ulN7+w8tNI9M0viRgFr2YlHrhKD2Dd0 login.hpc.ugent.be (RSA)
521 SHA256:C8TVx0w8UjGgCQfCmEUaOPxJGNMqv2PXLyBNODe5eOQ login.hpc.ugent.be (ECDSA)
256 SHA256:8AJg3lPN27y6i+um7rFx3xoy42U8ZgqNe4LsEycHILA login.hpc.ugent.be (ED25519)

**TODO**
Same fingerprints can be seen at https://docs.hpc.ugent.be/Windows/connecting/#winscp:~:text=Make%20sure%20the%20fingerprint%20in%20the%20alert%20matches%20one%20of%20the%20following

See also https://teams.cloud.microsoft/l/message/19:586df7931cb8418ba0aeaa4870b7db98@thread.tacv2/1781589223792?tenantId=d7811cde-ecef-496c-8f91-a1786241b99c&groupId=e347c50e-3cbb-46a3-8dd4-7eee2fb2368e&parentMessageId=1781589223792&teamName=CA60%20Gebruikersrelatiebeheer%20GR&channelName=Onderzoek-%20en%20wetenschappelijk%20rekenen&createdTime=1781589223792

#### SSH suggestions by Eliza

=> test on windows

- Start with some kind of disclaimer that default access is via web portal (link
  to ‘Web portal’ page) 🗸

- If they want SSH they’ll need to have some basic linux knowledge
  and we can’t hold their hand on that. 🗸

- Can link to
  <https://docs.vscentrum.be/accounts/generating_keys.html#cryptographic-keys>
  it has examples on how to create keys in windows, linux and mac.🗸
  
- Link to ‘WSL’ page for windows users that don’t want to use powershell.

  => unfortunately ssh and its sisters are not in https://github.com/microsoft/coreutils

- Mention how to upload new key to AP (link to page ‘VSC Accountpage’) 🗸

- How to connect via ssh to our systems 🗸

- Fingerprints of login.hpc.ugent.be for users to verify 🗸

- generated by us, on the website \[ \] **TODO**

- command to verify before making a connection

  ```bash
  ssh-keyscan login.hpc.ugent.be | ssh-keygen -lf -
  ```

## Why do we need this page?

For users that want shell access via SSH, we should try to cover only our
UGent-specific stuff

## See also

- [Github and SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh)
- Man pages on SSH
  - [ssh]: https://man.openbsd.org/ssh)
  - [ssh-keygen](https://man.openbsd.org/ssh-keygen)
  - [ssh_config](https://man.openbsd.org/ssh_config)
- <https://www.brandonchecketts.com/archives/ssh-ed25519-key-best-practices-for-2025>
- <https://richard-sebos.github.io/sebostechnology/posts/SSH-Auth-Key-Rotation/>
- <https://grahamhelton.com/blog/ssh-cheatsheet>
- <https://wiki.archlinux.org/title/SSH_keys>
- <https://sdf.org>

## Reference style links

[ssh]: https://man.openbsd.org/ssh
[ssh-keygen]: https://man.openbsd.org/ssh-keygen
[ssh_config]: https://man.openbsd.org/ssh_config
[opensshcves]: https://www.cvedetails.com/vulnerability-list/vendor_id-97/product_id-585/Openbsd-Openssh.html
[passwordmanager]: https://safeonweb.be/en/use-different-passwords-and-store-them-password-manager
[vscaccount]: https://account.vscentrum.be/django/account/edit
[obtainvsc]: https://www.vscentrum.be/getaccess
[mitre]: https://www.startupdefense.io/mitre-attack-techniques/t1021-004-ssh
[Nist]: https://www.nist.gov/cybersecurity-and-privacy/how-do-i-create-good-password
[bsi]: https://www.bsi.bund.de/SharedDocs/Downloads/EN/BSI/Publications/TechGuidelines/TG02102/BSI-TR-02102-4.pdf
[ssh-keygen-best-practices]: https://security.stackexchange.com/questions/143442/what-are-ssh-keygen-best-practices

## list of abbreviations, used in this text

*[SSH]: Secure SHell
*[HPC]: High Performance Computing
*[UGent]: University of Gent
*[linux]: Unix-like operating system made by Lunis Torvalds
*[sftp]: Secure FTP
*[ftp]: File Transfer Protocol
*[scp]: Secure CoPy
*[WSL]: Windows Subsystem for Linux
*[man]: An interface to the system reference manuals on Linux

## Footnotes

[^1]: Here we refer to the OpenBSD manpages because these are updated first by OpenSSH.
