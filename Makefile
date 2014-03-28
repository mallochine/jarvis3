bash:
	cp .jrc ~/.jrc;
	echo . .jrc >> ~/.bashrc;
	echo "Restart your shell"

zsh:
	cp .jrc ~/.jrc;
	echo . .jrc >> ~/.zshrc;
	echo "Restart your shell"

csh:
	cp .jrc ~/.jrc;
	echo . .jrc >> ~/.cshrc;
	echo "Restart your shell"

update:
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/Makefile -O Makefile
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/.jrc -O .jrc
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/README.md -O README.md
	cp .jrc ~/.jrc
	. ~/.jrc
