FROM sharelatex/sharelatex:latest

RUN tlmgr option repository https://ftp.tu-chemnitz.de/pub/tug/historic/systems/texlive/2025/tlnet-final && \
    tlmgr install scheme-full
