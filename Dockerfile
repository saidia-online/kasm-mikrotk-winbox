ARG BASE_TAG="develop"
ARG BASE_IMAGE="core-ubuntu-focal"
FROM kasmweb/$BASE_IMAGE:$BASE_TAG
USER root

ENV HOME=/home/kasm-default-profile
ENV STARTUPDIR=/dockerstartup
ENV INST_SCRIPTS=$STARTUPDIR/install
WORKDIR $HOME

# Set up environment
USER root
ENV HOME=/home/kasm-default-profile
ENV STARTUPDIR=/dockerstartup
WORKDIR $HOME
COPY install.sh $INST_SCRIPTS/WinBox/
RUN chmod +x $INST_SCRIPTS/WinBox/install.sh \
    && $INST_SCRIPTS/WinBox/install.sh

RUN echo "/usr/bin/desktop_ready ; /usr/local/bin/winbox" > $STARTUPDIR/custom_startup.sh \
    && chmod +x $STARTUPDIR/custom_startup.sh
USER 1000
