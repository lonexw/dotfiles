# Dotfiles

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent: it can safely be run
multiple times.

Dotfiles uses [Dotbot][dotbot] for installation.

Upgrading dotbot submodules to the latest published version:

```bash
git submodule update --init --remote
```

License
-------

Copyright (c) 2021-NOW Lone. Released under the MIT License. See
[LICENSE.md][license] for details.

[dotbot]: https://github.com/anishathalye/dotbot
[license]: LICENSE.md