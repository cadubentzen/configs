CONFIGFILES = vimrc     \
			  tmux.conf \
			  zshrc

HIDDEN = $(addprefix .,$(CONFIGFILES))

OUTPUT = $(addprefix $(HOME)/,$(HIDDEN))

UNAME = $(shell uname)

PROGRAMS = zsh  \
		   tmux \
		   curl

download:
ifeq ($(UNAME),Linux)
	apt-get install $(PROGRAMS)
else ifeq ($(UNAME),Darwin)
	brew install $(PROGRAMS)
else
	$(error OS must be either Linux or Mac OS X)
endif
	chsh -s $(which zsh)
	@echo "Now Log out and log in"

oh-my-zsh:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

install:  $(HIDDEN)

.%: %
	cp -a $< $(HOME)/$@ 

uninstall:
	rm -f $(OUTPUT)
