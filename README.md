Lupan's themes
==============

Here are my Emacs themes (dark, dark blue, and light).  Dark and light
themes are using [material design
colors](https://material.io/design/color/the-color-system.html#tools-for-picking-colors).


Screenshots
-----------

Screenshots are available [here](https://lupan.pl/lupan-themes/).


Installation
------------

First clone the repository

```
$ cd ~/.emacs.d/
$ git clone https://github.com/lukpank/lupan-themes/
```

and then for the dark variant add to your `~/.emacs.d/init.el` file
the following lines

```emacs-lisp
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lupan-themes/") t)
(require 'lupan-themes)
(load-theme 'lupan-dark t)
```

or for the light variant replace `lupan-dark` with `lupan-light`.
