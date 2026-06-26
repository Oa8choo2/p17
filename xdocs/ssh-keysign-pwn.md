# ssh-keysign-pwn

[ssh-keysign-pwn (CVE-2026-46333): Are Your Keys Leaking?](
https://www.fosslinux.com/156970/ssh-keysign-pwn-cve-2026-46333-are-your-keys-leaking.htm)

## Local

uname -r && uname -v 
6.17.0-29-generic
#29-Ubuntu SMP PREEMPT_DYNAMIC Tue May  5 19:42:34 UTC 2026

Because this kernel was compiled weeks before the May 14 patch was released,
this running kernel is confirmed vulnerable if it supports the exploited system
call.

$ sudo grep -E 'sys_pidfd_getfd' /proc/kallsyms
ffffffffa744c0c0 T __pfx___ia32_sys_pidfd_getfd
ffffffffa744c0d0 T __ia32_sys_pidfd_getfd
ffffffffa744c170 T __pfx___x64_sys_pidfd_getfd
ffffffffa744c180 T __x64_sys_pidfd_getfd
ffffffffa9f6c2e0 d _eil_addr___ia32_sys_pidfd_getfd
ffffffffa9f6c2f0 d _eil_addr___x64_sys_pidfd_getfd

The return of the active kernel symbols confirms that sys_pidfd_getfd is
compiled in and active on this architecture. Because the system call is active
and the kernel build predates the patch date, the VM is confirmed vulnerable.

$ ls -lh /usr/lib/openssh/ssh-keysign
-rwsr-xr-x 1 root root 335K Apr 28 02:24 /usr/lib/openssh/ssh-keysign

$ find /usr/bin /usr/lib -perm -4000 -type f 2>/dev/null | head -n 5
/usr/bin/passwd
/usr/bin/sudo.ws
/usr/bin/su
/usr/bin/chsh
/usr/bin/procmail

Script

uname -v \
 | grep -qE "Jan|Feb|Mar|Apr|May" \
 && sudo grep -q "sys_pidfd_getfd" /proc/kallsyms \
 && echo "WARNING: System is VULNERABLE to CVE-2026-46333. Patch immediately!"
