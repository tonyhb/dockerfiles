FROM alpine:edge

# bash, go, ncurses-dev for fzf
RUN apk add -U neovim python3 python3-dev gcc alpine-sdk bash go ncurses-dev && \
	pip3 install neovim && \
	mkdir /go && \
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
	~/.fzf/install && \
	curl -fLo /root/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ENV GOPATH=/go

# Install plugins
ADD init.vim /root/.config/nvim/init.vim
RUN nvim -c "PlugInstall" -c "qa" 
RUN nvim -c "GoInstallBinaries" -c "qa" 

# Add config for all plugins
ADD config.vimrc /root/.config/nvim/config.vimrc
RUN echo "source /root/.config/nvim/config.vimrc" >> /root/.config/nvim/init.vim

VOLUME /data
WORKDIR /data
CMD ["nvim"]
