FROM sharelatex/sharelatex:latest

RUN tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet && \
    tlmgr install scheme-full
