FROM ubuntu
RUN apt-get update && apt-get -y install pandoc texlive
COPY md-to-pdf /usr/bin
COPY johnny-bear.jpg /data/
COPY barrie_bear.md /data/
ENTRYPOINT ["md-to-pdf"]
