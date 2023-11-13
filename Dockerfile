# Dockerfile
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y shellinabox

CMD ["shellinabox", "-t", "--disable-ssl", "-p", "8080", "--no-beep", "--service", "/:LOGIN"]
