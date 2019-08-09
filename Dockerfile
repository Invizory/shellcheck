FROM koalaman/shellcheck-alpine

LABEL maintainer="Arthur Khashaev <arthur@khashaev.ru>"

RUN apk add --no-cache bash file git
COPY bin /usr/bin

WORKDIR /source
ENTRYPOINT ["shellcheck-ci"]
