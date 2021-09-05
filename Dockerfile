FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
COPY requirements.r requirements.r
RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends \
    ghostscript \
    texlive \
    texlive-bibtex-extra \
    texlive-fonts-extra \
    texlive-lang-english \
    texlive-lang-german \
    texlive-latex-extra \
    texlive-publishers \
    texlive-science \
    texlive-pstricks \
    texlive-pictures \
    chktex \
    latexmk \
    r-base && \
    Rscript requirements.r
