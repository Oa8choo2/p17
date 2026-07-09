# Ssh post quantum

FYI: since upgrade to Ubuntu 26.04 an 
ssh (OpenSSH_10.2p1 Ubuntu-2ubuntu3.2, OpenSSL 3.5.5 January 28, 2026)
connection to __login.hpc.ugent.be__ shows this:

```bash
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
```

```bash
$(which ssh) -Q kex
diffie-hellman-group1-sha1
diffie-hellman-group14-sha1
diffie-hellman-group14-sha256
diffie-hellman-group16-sha512
diffie-hellman-group18-sha512
diffie-hellman-group-exchange-sha1
diffie-hellman-group-exchange-sha256
ecdh-sha2-nistp256
ecdh-sha2-nistp384
ecdh-sha2-nistp521
curve25519-sha256
curve25519-sha256@libssh.org
sntrup761x25519-sha512
sntrup761x25519-sha512@openssh.com
mlkem768x25519-sha256
```

To check which key exchange algorithm OpenSSH uses when you connect to
github, run the following command on Linux, macOS, Git Bash, or other
Unix-like environments:

<https://github.blog/engineering/platform-security/post-quantum-security-for-ssh-access-on-github/>

```bash
$(which ssh) -v git@github.com exit 2>&1 | grep 'kex: algorithm:'
debug1: kex: algorithm: sntrup761x25519-sha512

$(which ssh) -v user@login.hpc.ugent.be exit 2>&1 | grep 'kex: algorithm:'
debug1: kex: algorithm: curve25519-sha256@libssh.org

$(which ssh) -v git@github.ugent.be com exit 2>&1 | grep 'kex: algorithm:'
debug1: kex: algorithm: sntrup761x25519-sha512

sudo sshd -T | grep kex
gssapikexalgorithms gss-group14-sha256-,gss-group16-sha512-,gss-nistp256-sha256-,gss-curve25519-sha256-
kexalgorithms mlkem768x25519-sha256,sntrup761x25519-sha512,sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521

sudo grep mlk -n sshd_config
147:KexAlgorithms mlkem768x25519-sha256,sntrup761x25519-sha512,sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521
```

Is it safe?
/etc/ssh ssh $ ssh-audit localhost | grep fail 
(kex) ecdh-sha2-nistp256                  -- [fail] using elliptic curves that are suspected as being backdoored by the U.S. National Security Agency
(kex) ecdh-sha2-nistp384                  -- [fail] using elliptic curves that are suspected as being backdoored by the U.S. National Security Agency
(kex) ecdh-sha2-nistp521                  -- [fail] using elliptic curves that are suspected as being backdoored by the U.S. National Security Agency
(key) ecdsa-sha2-nistp256                 -- [fail] using elliptic curves that are suspected as being backdoored by the U.S. National Security Agency
(mac) hmac-sha1-etm@openssh.com           -- [fail] using broken SHA-1 hash algorithm
(mac) hmac-sha1                           -- [fail] using broken SHA-1 hash algorithm

ssh-audit --version  
# ssh-audit v3.3.0, https://github.com/jtesta/ssh-audit

## Links

- [OpenSSH crypto configuration - Ubuntu Server documentation][OpenSSH crypto configuration - Ubuntu Server documentation]
- [Nashcom crypto safe ssh][Nashcom crypto safe ssh]
- [OpenSSH: Post-Quantum Cryptography][OpenSSH: Post-Quantum Cryptography]
- [FeistyDuck on sha1][fail]

[OpenSSH crypto configuration - Ubuntu Server documentation]: https://ubuntu.com/server/docs/explanation/crypto/openssh-crypto-configuration/
[Nashcom crypto safe ssh]: https://blog.nashcom.de/nashcomblog.nsf/dx/update-to-a-current-openssh-client-server-to-be-post-quantum-crypto-safe.htm
[OpenSSH: Post-Quantum Cryptography]: https://www.openssh.org/pq.html
[fail]: https://www.feistyduck.com/newsletter/issue_25_sha1_is_broken
