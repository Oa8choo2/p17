---
description: What you require you must also retire
tags: security, javascript
title: Retire
---

# Retire

> What you require you must also retire

There is a plethora of JavaScript libraries for use on the Web and in Node.JS
apps out there. This greatly simplifies development,but we need to stay
up-to-date on security fixes. 

See <https://retirejs.github.io/retire.js/>
and <https://github.com/retirejs/retire.js/>

## How to use 

1. build the site
1. run retire on the 'site'-dir, i.e. the dir where the build result is stored

On a zensical site:

```bash
$ retire --nocache --verbose --deep --path **zdocs**/site/assets/javascripts
```

:-) => no output

On a mkdocs site:

```bash
$ retire --nocache --verbose --deep --path /home/user/**/mkdocs/**
retire.js v5.4.2
Downloading https://raw.githubusercontent.com/RetireJS/retire.js/master/repository/jsrepository-v5.json ...
/home/user/learn/mkdocs/myhpc/site/assets/javascripts/lunr/wordcut.js
 ↳ underscore.js 1.8.3
underscore.js 1.8.3 has known vulnerabilities: severity: high; summary:  vulnerable to Arbitrary Code Injection via the template function, CVE: CVE-2021-23358, githubID: GHSA-cf4h-3jhx-xvhq; https://nvd.nist.gov/vuln/detail/CVE-2021-23358 severity: high; summary: ### Impact

In simple words, some programs that use `_.flatten` or `_.isEqual` could be made to crash. Someone who wants to do harm may be able to do this on purpose. This can only be done if the program has special properties. It only works in Underscore versions up to 1.13.7. A more detailed explanation follows.

In affected versions of Underscore, the `_.flatten` and `_.isEqual` functions use recursion without a depth limit. Under very specific conditions, detailed below, an attacker could exploit this in a Denial of Service (DoS) attack by triggering a stack overflow.

A proof of concept (PoC) for this type of attack with `_.isEqual`:
[...]
```

:-( => clearly not ok

## Watch out

Retire is looking for known libraries a.k.a. libraries with a name, such as jquery.

For the moment zensical is using it's own made javascript.
Maybe retire does not find any problem because of that.

  
