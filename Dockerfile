FROM  jrei/systemd-debian
ENV  SHELL /bin/bash
RUN  apt-get update \
    && apt-get install -y wget procps \
    && wget https://raw.githubusercontent.com/sprov065/x-ui/main/install.sh --no-check-certificate \
    && bash ./install.sh
VOLUME  [  "/etc/x-ui"  ]
EXPOSE  54321
