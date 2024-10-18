FROM hackinglab/alpine-unitd-hl:latest
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

ADD root /
RUN apk update 
RUN chmod +x /etc/services.d/*/run
RUN apk add --no-cache gcc libc-dev unit curl libseccomp libseccomp-dev socat unit musl-dev make 
RUN apk add musl 


RUN chmod +x /arch.sh
RUN /arch.sh


