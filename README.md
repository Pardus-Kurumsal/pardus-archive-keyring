# PARDUS ARCHIVE KEYRING UPDATE

Examples are [kali-archive-keyring][1] and [debian-archive-keyring][2]. 

## Install Prerequisites

```
apt-get install jetring
```

## Adding a new key

```
$ make keyrings/pardus-archive-keyring.gpg

$ gpg --no-default-keyring --keyring keyrings/pardus-archive-keyring.gpg \
  --no-auto-check-trustdb --import $KEYFILE

$ jetring-gen keyrings/pardus-archive-keyring.gpg~ \
  keyrings/pardus-archive-keyring.gpg \
  "add a new key"

$ mv add-XXXXXXXXXXXXXXXX add-a-new-key

$ jetring-accept active-keys/ add-a-new-key

$ git add .
$ git commit -m "Add a new key"
```

[1]: http://git.kali.org/gitweb/?p=packages/kali-archive-keyring.git;a=summary
[2]: https://packages.debian.org/stretch/debian-archive-keyring
