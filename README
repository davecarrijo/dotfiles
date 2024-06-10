![nice](https://github.com/davecarrijo/dotfiles/blob/master/showpic.png?raw=true)


## Requirements

Set zsh as your login shell:
``` bash
chsh -s $(which zsh)
```

## Install

Clone onto your laptop:
``` bash
git clone git@github.com:thoughtbot/dotfiles. && git ~/dotfiles
```
(Or, [fork and keep your fork
updated]()).

Install [rcm](https://github.com/thoughtbot/rcm):

``` bash
brew install rcm
```
Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

- Exclude the `README.md`, `README-ES.md` and `LICENSE` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
- Give precedence to personal overrides which by default are placed in
  `~/dotfiles-local`
- Please configure the `rcrc` file if you'd like to make personal
  overrides in a different directory

## Update

From time to time you should pull down any updates to these dotfiles, and run

    rcup

to link any new files and install new vim plugins. **Note** You _must_ run
`rcup` after pulling to ensure that all files in plugins are properly installed,
but you can safely run `rcup` multiple times so update early and update often!

Your `~/dotfiles-local/vimrc.bundles.local` might look like this:


## zsh Configurations

Additional zsh configuration can go under the `~/dotfiles-local/zsh/configs` directory. This
has two special subdirectories: `pre` for files that must be loaded first, and
`post` for files that must be loaded last.


The `~/dotfiles-local/zshrc.local` is loaded after `~/dotfiles-local/zsh/configs`.

## vim Configurations

Similarly to the zsh configuration directory as described above, vim
automatically loads all files in the `~/${HOME}/.config/nvim/` directory. This does not
have the same `pre` or `post` subdirectory support that our `zshrc` has.

This is an example `~/dotfiles-local/vim/plugin/c.vim`. It is loaded every time vim starts,
regardless of the file name:

    # Indent C programs according to BSD style(9)
    set cinoptions=:0,t0,+4,(4
    autocmd BufNewFile,BufRead *.[ch] setlocal sw=0 ts=8 noet

## What's in it?

[vim](http://www.vim.org/) configuration:

- [fzf](https://github.com/junegunn/fzf.vim) for fuzzy file/buffer/tag finding.
  `:Rinvert` migrations, etc.
- Telescope && ranger
- Run many kinds of tests inside vim using nvchad diagnostics
- Set `<leader>` to a single space.
- Switch between the last two files with Tab or shift+TAB.
- Syntax highlighting for Markdown, HTML, JavaScript, python, Go, java, more.
- Use RipeGrep instead of Grep when
  available.
- Map `<leader>ct` to re-index ctags.
- Use [vim-mkdir](https://github.com/pbrisbin/vim-mkdir) for automatically
  creating non-existing directories before writing the buffer.


[tmux](http://robots.thoughtbot.com/a-tmux-crash-course)
configuration:

- Improve color resolution.
- Remove administrative debris (session name, hostname, time) in status bar.
- Set prefix to `Ctrl+s`
- Soften status bar color from harsh green to light gray.




Shell aliases and scripts:

- `...` for quicker navigation to the parent's parent directory.
- `b` for `bundle`.
- `g` with no arguments is `git status` and with arguments acts like `git`.
- `migrate` for `bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare`.
- `mcd` to make a directory and change into it.
- `replace foo bar **/*.rb` to find and replace within a given list of files.
- `tat` to attach to tmux session named the same as the current directory.
- `v` for `$VISUAL`.

## Thanks

Thank you, [contributors](https://github.com/thoughtbot/dotfiles/contributors)!
Also, thank you to Corey Haines, Gary Bernhardt, and others for sharing your
dotfiles and other shell scripts from which we derived inspiration for items
in this project.

## License

dotfiles is copyright © 2009 thoughtbot. It is free software, and may be
redistributed under the terms specified in the [`LICENSE`] file.

[`LICENSE`]: /LICENSE

<!-- START /templates/footer.md -->
## About thoughtbot

![thoughtbot](https://thoughtbot.com/thoughtbot-logo-for-readmes.svg)

This repo is maintained and funded by thoughtbot, inc.
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

We love open source software!
See [our other projects][community].
We are [available for hire][hire].

[community]: https://thoughtbot.com/community?utm_source=github
[hire]: https://thoughtbot.com/hire-us?utm_source=github

<!-- END /templates/footer.md -->