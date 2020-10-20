% Version Control with Git
% Holger Dinkel (Luis Pedro Coelho)

---
output:
revealjs::revealjs_presentation:
theme: league
highlight: pygments
center: true
reveal_options:
    slideNumber: true
    previewLinks: true
    controls: true
    self_contained: true
    reveal_plugins: [“zoom”, “search”]
css: git_slides.css 
---

Version Control with Git
========================

Over the next hour, we will introduce you to version control with Git.
Version control is:

1.  A record of what you and your collaborators have done,
2.  A way to see what\'s changed, and
3.  A way to \"blame\" people for what they did.

What It Is
==========

-   A way to store and synchronize code (or any files).
-   Documents collections of changes *upon your request*.
-   Keeps your work safe and up-to-date *across machines*!

The important thing is the general concept of version control, but we
are using Git because it has become the standard among open-source
developers, and strong hosting options are available (GitHub, gitlab and
BitBucket).

A common approach\...
=====================

- just add something to the name of your file 
  - date
  - comment
  - status change
  - ...

---

![](phd101212s-versions.gif){ width=75% }


Basic Version Control
=====================

![](basic_diffs.png)

(From [betterexplained.com](betterexplained.com))


Working together
===============

![](centralized_example.png)

(From [betterexplained.com](betterexplained.com))

Other problems we can solve
===========================

Imagine multiple copies of important code and data across machines:

-   Which copy has "the fix"
-   Sharing with yourself can be hard, but
-   sharing with others is downright treacherous

What if there's a conflict?

Perfectly reasonable (but actually harder)
==========================================

Cloud storage\
+\
well-considered naming schemes\
=\
Maybe good enough?

How do you manage files now?\
NB: you are still getting work done, right?

Have a serious, brief discussion with students. Some of them will be
using good practices. Every time someone mentions something useful,
explain how Git ensures or automates it.

Git solves a lot of problems at once
====================================

-   A record of what you and your collaborators have done
-   A way to see what's changed
-   A way to "blame" people for what they did

Note the odd humor again in \"blame\"

Git repository
==============

![](repo_single.svg)

Git repositories
================

![](repo_distributed.svg)

Informative commit messages
===========================

![](git_commit.png) 
[From <http://xkcd.com/1296/>, licensed under a [Creative Commons Attribution-NonCommercial 2.5
License](http://creativecommons.org/licenses/by-nc/2.5/)]{.small}

There are two points here: if you don\'t explain what you\'re doing, you
won\'t know later. But also, don\'t let your desire not to write a
commit message stop you from making a snapshot of your work!

Sharing history
===============

-   The history is a permanent record of what happened (across copies of
    the repository)
-   Put another way: the history is what we copy when we copy a
    repository

github  / gitlab
===============

- github used to be free, now owned by MS
- pro's / con's
- size limitations
- huge database of source-code -> use the search function

Syllabus
========

1.  Creating repositories
2.  Adding / editing / deleting files
3.  Adding and committing your work
4.  Working with remote repositories
5.  Making \"clones\"
6.  Looking at history with diff and log
7.  Pushing your work back to a remote
8.  Pulling updates from a remote

We will only explore the basics in this lesson. Our real goal is to
teach you how version control works and how best to use it. While many
of our images were from web comics, one was from a very useful guide:
http://marklodato.github.io/visual-git-guide/ which is good both as a
tutorial and as a reference.

### October 2020

### http://software-carpentry.org
