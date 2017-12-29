setup: install-nvm install-rvm install-brew install-wget install-iterm install-oh-my-zsh

theme-vim:
	@npm install -g themer themer-colors-github-universe themer-vim themer-iterm themer-chrome
	@echo "Installing themer-colors-github-universe for vim..."
	@themer -c themer-colors-github-universe -t themer-vim -o ~/.vim/colors
	@echo "Moving themer-colors-github-universe for vim to .vim/colors"
	@mv .vim/colors/themer-vim/ThemerVim.vim .vim/colors/ThemerVim.vim
	@echo "Add `ThemerVim` to ~/.vimrc if you haven't already."

theme-iterm:
	@npm install -g themer themer-colors-github-universe themer-iterm
	@echo "Installing themer-colors-github-universe for iTerm..."
	@themer -c themer-colors-github-universe -t themer-iterm -o themes
	@open ~/themes

install-nvm:
	@echo "Installing nvm..."
	@curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

install-rvm:
	@echo "Installing rvm..."
	@\curl -sSL https://get.rvm.io | bash -s stable

install-brew: 
	@echo "Installing brew..."
	@/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

install-wget:
	@echo "Installing wget..."
	@brew install wget

install-iterm:
	@echo "Installing iterm..."
	@wget https://iterm2.com/downloads/stable/latest --content-disposition -O ~/Downloads/iterm.zip --max-redirect 1  
	@unzip ~/Downloads/iterm.zip -d /Applications
	@rm ~/Downloads/iterm.zip

install-oh-my-zsh:
	@echo "Installing oh-my-zsh..."
	@wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	@chmod 755 install.sh
	@./install.sh
	@rm install.sh

 
