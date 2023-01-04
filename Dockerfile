

FROM hackinglab/alpine-base-hl:latest
LABEL maintainer=<>
MAINTAINER  <>
ADD root /
RUN apk update 
RUN chmod +x /etc/services.d/*/run
RUN apk add --no-cache gcc libc-dev unit curl libseccomp libseccomp-dev socat unit
# Compiling binary from source ( replace the binary with the one from the challenge - /src/binary.c)

RUN cp /lib/ld-musl-x86_64.so.1 /
RUN cp /usr/lib/libseccomp.so.2.5.2 /
RUN tar cf /web/support.tar  /ld-musl-x86_64.so.1 /libseccomp.so.2.5.2








