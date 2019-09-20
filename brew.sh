#!/usr/bin/env bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Install zsh
brew install zsh zsh-completions
chsh -s /bin/zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack

#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick 
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Install my programs
# Firefox
brew cask install firefox
# Spacemacs
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
# Slack
brew cask install slack
# Docker
brew cask install docker
# Dropbox
brew cask install dropbox
# Franz
brew cask install franz
# Chrome
brew cask install google-chrome
# Iterm
brew cask install iterm2
# Spotify
brew cask install spotify
# Spectacle
brew cask install spectacle
# VLC
brew cask install vlc
# autocomplete for zsh
brew install zsh-autosuggestions


# RP SPECIFIC
brew install jpeg           # libjpeg needed for pillow
brew install wget           # needed for some development tasks
brew install nasm           # to compile binary dependencies of mozjpeg & optipng (required by webpack-image-loader)
brew install pkg-config     # needed for mozjpeg build
brew install entr           # needed for restarting some of our processes in `paver watch`
brew install libpqxx        # installs psql, which is useful for postgres work
brew install mercurial      # needed to pip install some deps from mercurial repos.

# A selection of build tools required by asdf.
brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc

brew install pyenv pyenv-virtualenvwrapper

brew install asdf

brew cask install java

# Remove outdated versions from the cellar.
brew cleanup
