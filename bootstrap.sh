#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function symlink() {
	normalized=$(echo $1 | sed 's/^.\///')
	ln -s -f $DIR/$normalized ~/$normalized
}

function doIt() {
	find . -type f -maxdepth 1 -name ".*" \( -not -iname ".DS_Store" -and -not -iname "*.swp" \) | while read file; do symlink "$file"; done
	cp -rf bin ~/
	touch ~/.extra
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
		echo "Symlinks configured. Add machine specific functions to ~/.extra"
	fi;
fi;
unset doIt;
