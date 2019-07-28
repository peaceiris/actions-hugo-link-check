FROM golang:1.12.7-buster

LABEL "com.github.actions.name"="Hugo broken link check with muffet"
LABEL "com.github.actions.description"="Hugo broken link check quickly with raviqqe/muffet"
LABEL "com.github.actions.icon"="link"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/peaceiris/actions-hugo-link-check"
LABEL "homepage"="https://github.com/peaceiris/actions-hugo-link-check"
LABEL "maintainer"="peaceiris"

ENV HUGO_VERSION='0.56.1'
ENV HUGO_URL='https://github.com/gohugoio/hugo.git'

RUN git clone ${HUGO_URL} -b v${HUGO_VERSION} --depth 1 /hugo && \
    cd /hugo && \
    go install --tags extended

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
