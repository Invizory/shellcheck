FROM koalaman/shellcheck-alpine

LABEL maintainer="Arthur Khashaev <arthur@khashaev.ru>"

RUN apk add --no-cache bash file git xmlstarlet
COPY bin /usr/bin
COPY share /usr/share

WORKDIR /source
ENTRYPOINT ["shellcheck-ci"]
