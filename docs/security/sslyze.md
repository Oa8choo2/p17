# Sslyze, an ssl analyser

<https://github.com/nabla-c0d3/sslyze>

<https://blog.adqt.fr/sslyze/documentation/>

> SSLyze can analyze the SSL/TLS configuration of a server by connecting to it,
> in order to ensure that it uses strong encryption settings (certificate,
> cipher suites, elliptic curves, etc.), and that it is not vulnerable to known
> TLS attacks (Heartbleed, ROBOT, OpenSSL CCS injection, etc.).

Sslyze can be run locally, at some places it is available online.
Example:
[Actalis, a european (Italian) certification authority](https://www.actalis.com/Tools)

```bash
uv run sslyze --mozilla_config=modern docs.hpc.ugent.be # run on Wed Aug 26 07:48:46 CEST 2026
```

```text
 COMPLIANCE AGAINST TLS CONFIGURATION
 ------------------------------------

    Checking results against Mozilla's "modern" configuration. See https://ssl-config.mozilla.org/ for more details.

    docs.hpc.ugent.be:443: FAILED - Not compliant.
        * maximum_certificate_lifespan: Certificate life span is 365 days, should be less than 90.
        * certificate_types: Deployed certificate types are {'rsa'}, should have at least one of {'ecdsa'}.
        * certificate_signatures: Deployed certificate signatures are {'sha256WithRSAEncryption'}, should have at least one of {'ecdsa-with-SHA384', 'ecdsa-with-SHA256', 'ecdsa-with-SHA512'}.
        * tls_versions: TLS versions {'TLSv1.2'} are supported, but should be rejected.
        * ciphers: Cipher suites {'TLS_DHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_DHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256', 'TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256'} are supported, but should be rejected.
        * tls_curves: TLS curves {'X448', 'secp521r1'} are supported, but should be rejected.
```

Compare to:

```bash
uv run sslyze --mozilla_config=modern hpcugent.github.io
```

```text
 COMPLIANCE AGAINST TLS CONFIGURATION
 ------------------------------------

    Checking results against Mozilla's "modern" configuration. See https://ssl-config.mozilla.org/ for more details.

    hpcugent.github.io:443: FAILED - Not compliant.
        * certificate_types: Deployed certificate types are {'rsa'}, should have at least one of {'ecdsa'}.
        * certificate_signatures: Deployed certificate signatures are {'sha256WithRSAEncryption'}, should have at least one of {'ecdsa-with-SHA256', 'ecdsa-with-SHA384', 'ecdsa-with-SHA512'}.
        * tls_versions: TLS versions {'TLSv1.2'} are supported, but should be rejected.
        * ciphers: Cipher suites {'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA'} are supported, but should be rejected.
```
