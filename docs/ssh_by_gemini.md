# Ssh by Gemini

Prompt was **describe what ssh is and how to use it**

2026-06-15 07:21:22

**ssh**, which stands for **Secure SHell**, is a cryptographic network protocol
that allows you to securely connect to and run jobs on a remote computer or
server over an unsecured network.

Think of it as a secure, encrypted tunnel through the internet.
Instead of physically sitting in front of a server, ssh lets you open a terminal
on your local machine and run commands on the remote machine as if you were
right there.

You can compare it to HTTPS which secures your connection while browsing.

* * *

## How does ssh work?

When you connect via ssh, it uses a **client-server architecture**:

* **ssh Client:** The software on your local machine (e.g., your laptop) used to
  initiate the connection.
* **ssh Server:** The software running on the remote machine (e.g., a cloud
  server) that listens for incoming connection requests.

All traffic between the client and the server is heavily encrypted.
This prevents eavesdroppers from stealing your passwords or viewing the data you
send back and forth.

* * *

## How to use ssh

To use ssh, you need three things:

1. The **IP address** or **domain name** of the remote server.
2. A **username** on that server.
3. An **authentication method** (either a password or a cryptographic key pair).

### 1. Basic connection (password authentication)

If you work on a Mac, Linux, or a modern[^1] Windows machine (via PowerShell or
command Prompt), ssh is built right into your terminal.

Open your terminal[^2] and type the following command:

```bash
ssh username@remote_host_address
```

*Replace `username` with your actual username on the server, and
`remote_host_address` with the server’s IP (example: `192.168.1.50`) or domain
(example: `myserver.com`).*

**What happens next:**

* If it’s your first time connecting, you’ll see a warning asking if you trust
  the host. Type `yes`.
* You will be prompted for your password.
  **Note:** As you type your password, no characters or asterisks will show on
  the screen for security.

  Just type it out and hit **Enter**.

Once authenticated, your terminal prompt will change, indicating you are now
logged into the remote server.

### 2. Advanced connection (ssh keys)

The passwords methos is vulnerable to brute-force attacks.
The industry standard is to use **ssh key pairs** (a public key and a private
key), which allow passwordless, highly secure logins.

1. **Generate a key pair** on your local machine:
```bash
ssh-keygen -t ed25519
```

*(Press ++enter++ to accept the defaults).* 

2. **Copy the public key** to your remote server:

```bash
ssh-copy-id username@remote_host_address
```

3. **Log in securely** without a password:
```bash
ssh username@remote_host_address
```

* * *

## Common ssh commands and tricks

| Scenario | Command |
| --- | --- |
| **Specify a non-standard port** (Default is 22) | `ssh username@host -p 2222` |
| **Run a single command and exit** | `ssh username@host "ls -la"` |
| **Copy a file *to* the server** (using scp) | `scp localfile.txt username@host:/remote/dir/` |

> 💡 **Pro-Tip:** If you are managing multiple servers, look into configuring an
> `~/.ssh/config` file. TODO: test on windows
> It allows you to save shortcuts so you can just type `ssh myserver` instead of
> typing out usernames and IP addresses every time.

What kind of system or server are you trying to connect to?
I can help you set up your specific connection or generate an ssh config file
for it.

[^1]: Since October 2018, Windows 10 has support for ssh. You might need to
    enable it tough. See
    <https://carleton.ca/scs/2024/enable-openssh-on-windows-10/> 
[^2]: See TODO
    open a terminal text
