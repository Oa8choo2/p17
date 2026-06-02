# SSH Fingerprints

# TODO [TODO] best practice key rotation?

At 20260519, after
<https://github.com/0xdeadbeefnetwork/ssh-keysign-pwn>

```bash
$ ssh-keyscan login.hpc.ugent.be | ssh-keygen -lf -
4096 SHA256:W8Wz0/FkkCR2ulN7+w8tNI9M0viRgFr2YlHrhKD2Dd0 login.hpc.ugent.be (RSA)
521 SHA256:C8TVx0w8UjGgCQfCmEUaOPxJGNMqv2PXLyBNODe5eOQ login.hpc.ugent.be (ECDSA)
256 SHA256:8AJg3lPN27y6i+um7rFx3xoy42U8ZgqNe4LsEycHILA login.hpc.ugent.be (ED25519)
```

From docs.hpc, blame indicates last change in 2023 or earlier

```bash

.. repos/github.com/hpcugent/vsc_user_docs$ git blame mkdocs/extra/gent.yml

f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 35) opensshFirstConnect: |
f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 36)   RSA key fingerprint is 10:2f:31:21:04:75:cb:ed:67:e0:d5:0c:a1:5a:f4:78
f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 37)   RSA key fingerprint is SHA256:W8Wz0/FkkCR2ulN7+w8tNI9M0viRgFr2YlHrhKD2Dd0
f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 38)   ECDSA key fingerprint is e6:d2:9c:d8:e7:59:45:03:4a:1f:dc:96:62:29:9c:5f
f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 39)   ECDSA key fingerprint is SHA256:C8TVx0w8UjGgCQfCmEUaOPxJGNMqv2PXLyBNODe5eOQ
f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 40)   ED25519 key fingerprint is 19:28:76:94:52:9d:ff:7d:fb:8b:27:b6:d7:69:42:eb
f9768ad51670 gent_extra.yml        (Kenneth Hoste - UGENT       2023-04-05 17:15:17 +0200 41)   ED25519 key fingerprint is SHA256:8AJg3lPN27y6i+um7rFx3xoy42U8ZgqNe4LsEycHILA
```

