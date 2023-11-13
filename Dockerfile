FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y shellinabox

# Expose the default port for Shell in a Box
EXPOSE 4200

# Set the command to run on container start
CMD ["shellinabox", "-t", "--no-beep", "-s", "/:LOGIN", "--disable-ssl"]
