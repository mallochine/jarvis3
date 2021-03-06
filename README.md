Meta Information
-------------------
Author: Alex Guo.

Contact: chessnut@outlook.com.

Program: JARVIS.

Backend code: https://github.com/mallochine/jarvis2-svr

JARVIS 3.0
---------------------

What's new is a Dropbox-like remote filesystem. Anybody who's SSH'd somewhere knows
how much of a pain in the ass it is to transfer files between the server and
other computers (servers or clients). With "j up", you can upload files
to a easy-to-type URL, and then download with "j get".

On top of all that, you can treat the remote filesystem as a Unix filesystem with
commands like "j rm", "j ls", and "j cat".

Installation
-------------
Download the whole git repo (git clone http://github.com/mallochine/jarvis2.git).
Run the command that corresponds to your shell:

- make bash 
- make zsh 
- make csh

Commands
----------
### j add

Add the current directory as a bookmark.

```bash
aguo@unix1:~/Documents/10605$ j add
Type an alias for the current working directory, or ^C to quit:
ml
```

### j \<bookmark\>

Go to the directory corresponding to the bookmark.

```bash
aguo@unix1:~$ j ml
aguo@unix1:~/Documents/10605$
```

### j up \<filename\>

Uploads the filename. Does not parse wildcards yet.

```bash
[ec2-user@ip-10-252-62-49 jarvis2]$ j up README.md
Uploading...
"README.md" has been uploaded to http://alexbug.com/up/README.md.txt
You can use "j get README.md" to download the file.
```

### j ls

Lists all the files in uploaded.

```bash
aguo@unix1:~/Documents/10605$ j ls
README.md.txt
```

### j update

Updates your JARVIS to the current source code. Does not yet check on its own for whether
there are any updates.

```bash
aguo@unix1:~$ j update
Updated.
```

### j get \<filename\>

Downloads the filename. Does not parse wildcards yet.

```bash
aguo@unix1:~/space$ j get README.md
Downloading...
--2014-03-20 21:50:06--  http://alexbug.com/up/README.md.txt
Resolving alexbug.com... 54.214.45.118
Connecting to alexbug.com|54.214.45.118|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 929 [text/plain]
Saving to: `README.md'

100%[======================================================================================================================================================>] 929         --.-K/s   in 0s

2014-03-20 21:50:06 (145 MB/s) - `README.md' saved [929/929]
```

### j cat \<filename\>

Print the contents of the filename. Does not parse wildcards.

```bash
aguo@unix1:~$ j cat README.md
Meta Information
-------------------
Author: Alex Guo.

Contact: chessnut@outlook.com.

Program: JARVIS.
```

### j rm \<filename\>

Removes the filename. Parses wildcards.

```bash
aguo@unix1:~/space$ j ls
README.md.txt
aguo@unix1:~/space$ j rm *
aguo@unix1:~/space$ j ls
aguo@unix1:~/space$ # Nothing in uploaded!
```

### j edit

Edits your bookmarks using the Vim editor.

```bash
[ec2-user@ip-10-252-62-49 ~]$ j edit
```

```bash
  1 bics=/var/bics
  2 newpl=/var/bics/newplayers
  3 src=/home/ec2-user/space/bics-current/src
  4 stats=/var/bics/data/stats
  5 players=/var/bics/players
  6 jarvis2=/home/ec2-user/space/jarvis2
  7 html=/var/www/html
  8 debug=/var/bics-debug
  9 proxies=/home/ec2-user/space/fics-proxy
~
~
~
~
~
~
~
~
~

```

### j all

Lists all the bookmarks you have.

```bash
[ec2-user@ip-10-252-62-49 ~]$ j all
bics=/var/bics
newpl=/var/bics/newplayers
src=/home/ec2-user/space/bics-current/src
stats=/var/bics/data/stats
players=/var/bics/players
jarvis2=/home/ec2-user/space/jarvis2
html=/var/www/html
debug=/var/bics-debug
proxies=/home/ec2-user/space/fics-proxy
```

See Also
----------

- JARVIS2: https://github.com/mallochine/jarvis2
- the backend code that runs JARVIS: https://github.com/mallochine/jarvis2-svr
