FROM alpine

RUN apk add --no-cache --update bash gnupg
COPY gen-key-script .
RUN gpg2 --batch --gen-key gen-key-script

CMD ["/bin/bash" , "-c", "gpg2 -a --export --output gpg-secret-key.asc && cat gpg-secret-key.asc"]

