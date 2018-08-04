FROM ubuntu:18.04

RUN apt-get update -y \
 && apt-get install -y libcurl4-openssl-dev gcc-mingw-w64 automake gcc make git 
 
RUN git clone https://github.com/bitzeny/cpuminer.git cpuminer
WORKDIR /cpuminer
RUN ./autogen.sh \
 && ./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer" \
 && make
ADD ./docker-entry.sh /
RUN chmod +x /docker-entry.sh
ENTRYPOINT [ "/docker-entry.sh" ]
