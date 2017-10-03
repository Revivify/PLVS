FROM fedora
RUN dnf -qy remove vim-minimal
RUN dnf -qy install man vim-enhanced vim-syntastic vim-syntastic-html vim-syntastic-sh vim-syntastic-c vim-syntastic-php vim-syntastic-ansible vim-syntastic-javascript
RUN dnf -qy install fish hostname man man-db tmux
RUN dnf -qy group install "Development Tools"
RUN dnf -qy install rust cargo
ENTRYPOINT /usr/bin/fish
