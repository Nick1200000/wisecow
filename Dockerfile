# Use an official Ubuntu as the base image
FROM ubuntu:latest

# Set the maintainer label
LABEL maintainer="kumarn7570@gmail.com"

# Install necessary packages
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat

# Copy the wisecow.sh script into the container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Ensure the script is executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the port on which the web server will run
EXPOSE 4499

# Run the wisecow.sh script
CMD ["/usr/local/bin/wisecow.sh"]
