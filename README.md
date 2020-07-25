Lupan's themes
==============

Here are my Emacs themes (dark, dark blue, dark gray, light, material
dark, and material light).  Material dark and material light themes
are using [material design
colors](https://material.io/design/color/the-color-system.html#tools-for-picking-colors).
Others use groups of HSL colors where each group have the same
saturation and luminance components (the parameters of each group can
be adjusted in the source of each theme function).


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

for other variants replace `lupan-dark` with one of `lupan-dark-blue`,
`lupan-dark-gray`, `lupan-light`, `lupan-material-dark`, or
`lupan-material-light`.
