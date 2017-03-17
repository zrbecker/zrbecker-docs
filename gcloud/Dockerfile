FROM ubuntu

# Install Dependencies
RUN apt-get update > /dev/null
RUN apt-get install -y python curl > /dev/null

# Install google-cloud-sdk
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-147.0.0-linux-x86_64.tar.gz
RUN tar xzf google-cloud-sdk-147.0.0-linux-x86_64.tar.gz -C /usr
RUN /usr/google-cloud-sdk/install.sh -q > /dev/null

# Cleanup
RUN rm -rf google-cloud-sdk-147.0.0-linux-x86_64.tar.gz
RUN rm -rf /var/lib/apt/lists/*

