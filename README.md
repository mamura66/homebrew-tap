# ample — see what your tools left on your Mac

[![AmpleCapacity - Featured on DevHunt](https://devhunt.org/badge/amplecapacity.svg)](https://devhunt.org/tool/amplecapacity)

`ample` measures the files on your Mac that your tools can make again:
package caches, Xcode build data, Docker disks, downloaded AI models and app
caches. It tells you how much space they take, grouped by kind.

It only reads. It never moves or deletes anything, and it makes no network
connections.

## Install

```
brew install mamura66/tap/ample
ample scan
```

It runs on Apple silicon and Intel Macs.

## What you see

```
AmpleCapacity scan — /Users/you
Profile: developer

Reclaimable: 9.8 GB (Everyday 841.1 MB, Developer-only 9.0 GB)

Package caches               7.6 GB   developer   Ask me    26 items
AI models                    1.3 GB   developer   Ask me    1 item
Downloads                  690.0 MB   everyday    Ask me    1 item
Trash and installers       151.0 MB   everyday    Ask me    2 items
System leftovers            28.5 MB   developer   Safe      19 items
Apple developer            921.6 KB   developer   Safe      4 items

474 paths could not be read and were left out of this total.
Scanned in 6.7s.
```

**Safe** means everything in that group is safe to remove.
**Ask me** means at least one thing in it needs your decision first, because
removing it has a cost, such as a slower next build or a large download.

## Seeing everything

macOS keeps some folders private, such as Mail and Photos. Those show up as
"paths could not be read". To include them, turn on Terminal in System
Settings → Privacy & Security → Full Disk Access, then open a new Terminal
window and scan again.

## Options

```
ample scan ~/Developer             # scan one folder
ample scan --json > result.json    # the full result as JSON
ample --help
```

## Remove it

```
brew uninstall ample
```

## About

The scanner is free and stays free. It is made by
[AmpleCapacity](https://amplecapacity.com), a Mac app that removes these
files for you, with seven days to put anything back.
