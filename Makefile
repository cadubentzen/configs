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
	@echo ""
	@echo "#######################################################"
	@echo "Now run 'chsh -s $$(which zsh)' and log out and back in"
	@echo "#######################################################"

install:
	@$(MAKE) oh-my-zsh
	@$(MAKE) install_files

oh-my-zsh:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

install_files:  $(HIDDEN)

.%: %
	cp -a $< $(HOME)/$@ 

uninstall:
	rm -f $(OUTPUT)
