# I do dotfiles!

Config files for zsh, bash, git, completions etc. to set up a system the way I like it. **~/.dotfiles.**

**NOTE:** The dotfiles is configured for MacOS machine. Most of the things expected to work on all machines running unix based operating systems.

## Installing fresh

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent: it can safely be run
multiple times.

```bash
git clone git@github.com:lonexw/dotfiles.git ~/.dotfiles --recursive
cd .dotfiles && ./install # Run the install script
```

Any new changes can be retrieved from the repository and installed using the following commands:

```bash
git pull && ./install
```

Dotfiles uses [Dotbot][dotbot] for installation.

Upgrading dotbot submodules to the latest published version:

```bash
git submodule update --init --remote
```

## Content



License
-------

Copyright (c) 2021-NOW Lone. Released under the MIT License. See
[LICENSE.md][license] for details.

[dotbot]: https://github.com/anishathalye/dotbot
[license]: LICENSE.md