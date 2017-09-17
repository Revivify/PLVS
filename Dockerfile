FROM fedora
RUN dnf -qy remove vim-minimal
RUN dnf -qy install fish hostname tmux
RUN dnf -qy install man vim-enhanced vim-syntastic vim-syntastic-html vim-syntastic-sh vim-syntastic-c vim-syntastic-php vim-syntastic-ansible vim-syntastic-javascript
RUN dnf -qy group install "Development Tools"
ENTRYPOINT /usr/bin/fish
