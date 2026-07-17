# Use a Debian base image
FROM debian:bookworm-slim

# Define the input variable for the package name
ARG PACKAGE_NAME

# Update and install the variable-defined package safely
RUN apt-get update && apt-get install -y --no-install-recommends \
    ${PACKAGE_NAME} \
    && rm -rf /var/lib/apt/lists/*

# Your entrypoint or application logic goes here
CMD ["bash"]
