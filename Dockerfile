# Use Alpine Linux as the base image
FROM alpine:latest

# Install BFGMiner and other dependencies
RUN apk update && \
    apk add --no-cache bfgminer

# Create a working directory, this is optional and used for mounting the configuration file
WORKDIR /app

# Set an environment variable to specify the configuration file path
ENV BFGMINER_CONFIG /app/bfgminer.conf

# Define the container entry point (start command), running BFGMiner and passing the configuration file
CMD ["bfgminer", "--config", "$BFGMINER_CONFIG"]
