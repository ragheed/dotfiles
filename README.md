# Dotfiles

this repo contains dotfiles, including but not only i3 config and vim config.

## i3 general tips
- *pulsaudio* is needed in order for sound to work.
- *nm-applet* and *gnome-keyring* is needed for network-manager to work
- *ranger* is a good text based file browser
- *pcmanfm* looks nice for gui fm
- *termite* as a terminal emulator

### TODO:
* better multi monitor config
* assign auto started application (chrome / console) to desktops
* auto assign apps to default desktop once monitor is disconnected
* add deps
* add Monaco for powerline from .fonts
* add hack from nerd fonts
* add fontconfig
* powerline fonts submodule
* fonts-font-awesome package
* nerd-fonts

## Install
- clone into .dotfiles
- `cd .dotfiles`
- `stow .`
- clone vundle
- in Vim run `:PluginInstall`
