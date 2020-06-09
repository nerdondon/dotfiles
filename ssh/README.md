Inevitably, I have to set up a new SSH config for each new job with forwarding and whatnot. I always forget how, so here's the articles:

1. Set up local forwarding with SSH config - https://nerderati.com/2011/03/17/simplify-your-life-with-an-ssh-config-file/

1. Set up control sockets and aliases for local forwarding controls - https://mpharrigan.com/2016/05/17/background-ssh.html

TL;DR:

```
ssh -fNL 9906:binding.domain.com:3306 somehost.example.com
```

to

```
Host somehost
    HostName somehost.example.com
    LocalForward 9906 binding.domain.com:3306
```

and control aliases

```
alias somehost-up='ssh -fNM somehost'
alias somehost-status='ssh -TO check somehost'
alias somehost-down='ssh -TO exit somehost'
```

flag explanations:
```
-f = run in background
-N = don't send a remote command
-M = set control socket to master mode
```
