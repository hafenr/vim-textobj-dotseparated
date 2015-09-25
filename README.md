Introduction
------------

The textobj-dotseparated plugin provides two new text-objects which are
triggered by `a.` and `i.` respectively. You can use them when you have to
deal with the following type of words:

- foo.bar.baz

Now, suppose you have to change bar to qux (\* for cursor position). You can
do the following:

`foo.b*ar.bar` and type `ci.` to get `foo.*.bar`. Or you can type `da.` to get
`foobar`.

Variable or function names containing dots to separate subwords are often found in the programming language *R* or in other languages where dots are used for accessing properties of an object.

Installation
------------

I recommend installing the plugin via [vundle](https://github.com/VundleVim/Vundle.vim) or [vim-plig](https://github.com/junegunn/vim-plug).

You can also unzip it in your `~/.vim` directory. The plugin depends on
[vim-textobj-user](https://github.com/kana/vim-textobj-user) by
[kana](https://github.com/kana).
So you need to install it in order to use this plugin.

Contributors
------------

Acknowledgement
---------------
The README and doc file are largely copied from [vim-textobj-underscore](https://github.com/lucapette/vim-textobj-underscore) by [lucapette](https://github.com/lucapette).

Copyright
---------

Copyright (c) Robin Hafen. Distributed under the same terms as Vim itself.
