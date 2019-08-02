FROM golang:1.12.7-buster

LABEL "com.github.actions.name"="Hugo broken link check with muffet"
LABEL "com.github.actions.description"="Hugo broken link check quickly with raviqqe/muffet"
LABEL "com.github.actions.icon"="link"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/peaceiris/actions-hugo-link-check"
LABEL "homepage"="https://github.com/peaceiris/actions-hugo-link-check"
LABEL "maintainer"="peaceiris"

ENV HUGO_VERSION='0.56.3'
ENV HUGO_NAME="hugo_extended_${HUGO_VERSION}_Linux-64bit"
ENV HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_NAME}.tar.gz"
ENV MUFFET_VERSION="1.1.2"
ENV MUFFET_NAME="muffet_1.1.2_Linux_x86_64"
ENV MUFFET_URL="https://github.com/raviqqe/muffet/releases/download/${MUFFET_VERSION}/${MUFFET_NAME}.tar.gz"
RUN wget "${HUGO_URL}" && \
    tar -zxvf "${HUGO_NAME}.tar.gz" && \
    mv ./hugo /go/bin/ && \
    wget "${MUFFET_URL}" && \
    tar -zxvf "${MUFFET_NAME}.tar.gz" && \
    mv ./muffet /go/bin/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
