FROM debian

RUN apt-get update && \
        apt-get install -y unzip wget libelf-dev && \
        rm -rf /var/lib/apt/lists/

# Everything prior to this can be cached in a shared layer; below here changes
# depending on the flow version
RUN wget -O /opt/flow.zip https://github.com/facebook/flow/releases/download/v0.45.0/flow-linux64-v0.45.0.zip && \
        cd /opt && \
        unzip /opt/flow.zip && \
        mv /opt/flow/flow /usr/local/bin/flow && \
        rm -rf /opt/*

WORKDIR /workspace
CMD ["flow"]
