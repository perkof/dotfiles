# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils

# Install wget with IRI support
install wget --with-iri

# Install MacVim with LUA support
install macvim --with-cscope --with-lua --override-system-vim

# Install other useful binaries
install git
install tree
install jq

# Install development languages and tooling
install gradle
install groovy

# Remove outdated versions from the cellar
cleanup
