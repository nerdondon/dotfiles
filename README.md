# mine

## Install steps
1. Install homebrew
1. Run `brew bundle`
1. Run `./install`
1. Run `./script/bootstrap_mac`

## Notes
Just some notes on my current set up while I figure out how to automate their installation

Fonts I like:
- Fira Code
- Inconsolata for Powerline
- Meslo LG M for Powerline @ 12pts
- Soure Code Pro for Powerline

Terminal themes I like:
- Brogrammer
- Material Dark
- Smyck
- Chalk
- CLRS (white)
- Brightlights
- Afterglow
- Ciapre
- Cobalt2
- Darkside
- Material (white)

## Updating stuff

### Submodule updates
Run the following to update submodules (dotbot, zsh-autosuggest, etc.):
```
git submodule update --remote
```

## thanks
Largely a fork of [Zach Holman's](https://github.com/holman) dotfiles

With inspiration and additions from the following:
- https://github.com/paulmillr/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/jasonszhao/dotfiles - decided to use dotbot from looking at yours :D
- https://dotfiles.github.io/ - awesome resource

## original thanks from holman

I forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of my changes and tweaks inspired me to finally roll my own. But Ryan's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.
