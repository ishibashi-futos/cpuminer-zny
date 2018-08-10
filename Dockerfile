FROM alpine:3.8

RUN wget -O - "https://github.com/bitzeny/cpuminer/archive/master.zip" | unzip -

WORKDIR /cpuminer-master
RUN apk --no-cache add curl-dev
RUN apk --no-cache add --virtual=dependencies libgcc gcc g++ automake make autoconf \
 && chmod +x ./autogen.sh \
 && ./autogen.sh \
 && ./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer" \
 && make \
 && apk del dependenciesADD ./docker-entry.sh /
RUN chmod +x /docker-entry.sh
ENTRYPOINT [ "/docker-entry.sh" ]
