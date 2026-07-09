# Security headers and CSP

Content Security Policy (CSP)

Advice from [Sucuri][sucuri]

## Security headers

Missing security header for clickjacking protection.
 
Alternatively, you can use `Content-Security-Policy: frame-ancestors 'none'`.

Missing security header to prevent Content Type sniffing.

Missing Content-Security-Policy directive. We recommend to add the following
CSP directives (you can use default-src if all values are the same):
script-src, object-src, base-uri, frame-src

---

Headers from vscdocs:

```headers
$ curl -IL https://oa8choo2.github.io/vsc_user_docs/HPC/introduction/ 
HTTP/2 200 
server: GitHub.com
content-type: text/html; charset=utf-8
last-modified: Wed, 08 Jul 2026 09:12:24 GMT
access-control-allow-origin: *
strict-transport-security: max-age=31556952
etag: "6a4e1478-929b1"
expires: Wed, 08 Jul 2026 14:15:10 GMT
cache-control: max-age=600
x-proxy-cache: MISS
x-github-request-id: 754C:2F6646:9A896F:9BEDD5:6A4E5915
accept-ranges: bytes
age: 0
date: Wed, 08 Jul 2026 14:05:10 GMT
via: 1.1 varnish
x-served-by: cache-bru1480057-BRU
x-cache: MISS
x-cache-hits: 0
x-timer: S1783519511.513406,VS0,VE127
vary: Accept-Encoding
x-fastly-request-id: 4902b975be7f62896726c15962ecaeaeb97499f0
content-length: 600497
```

## Links

- [Sucuri][sucuri]
- [CSP is useful][nico]

[sucuri]: https://sitecheck.sucuri.net/results/https/oa8choo2.github.io/vsc_user_docs
[nico]: https://github.com/nico3333fr/CSP-useful

## Abbreviations

*[csp]: Content Security Policy
*[CSP]: Content Security Policy
