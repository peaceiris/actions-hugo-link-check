FROM golang:1.11.10

LABEL "com.github.actions.name"="Hugo broken link check with muffet"
LABEL "com.github.actions.description"="Hugo broken link check quickly with raviqqe/muffet"
LABEL "com.github.actions.icon"="link"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/peaceiris/actions-hugo-link-check"
LABEL "homepage"="https://github.com/peaceiris/actions-hugo-link-check"
LABEL "maintainer"="peaceiris"

ENV HUGO_VERSION='0.55.6'
ENV HUGO_NAME="hugo_extended_${HUGO_VERSION}_Linux-64bit"
ENV HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_NAME}.deb"

RUN apt-get update && apt-get upgrade -y && \
    wget "${HUGO_URL}" && \
    apt-get install "./${HUGO_NAME}.deb" && \
    rm -rf "./${HUGO_NAME}.deb" "${HUGO_NAME}" /go/src && \
    go get -u github.com/raviqqe/muffet && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
