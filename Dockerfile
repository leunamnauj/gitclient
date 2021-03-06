FROM alpine:3.6

RUN apk --update add git less openssh-client bash tzdata && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]