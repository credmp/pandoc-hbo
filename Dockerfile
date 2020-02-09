FROM thomasweise/docker-pandoc

MAINTAINER Arjen Wiersma <arjen@wiersma.org

# install pandoc-latex-environment
RUN apt update && apt install -y python3-pip && pip3 install pandoc-latex-environment &&\
# clean up all temporary files
    apt-get clean &&\
    apt-get autoclean -y &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /tmp/* /var/tmp/* &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -f /etc/ssh/ssh_host_*

# we remember the path to pandoc in a special variable
ENV PANDOC_DIR=/root/.cabal/bin/

# add pandoc to the path
ENV PATH=${PATH}:${PANDOC_DIR}

WORKDIR /doc/

CMD ["pandoc --help"]
