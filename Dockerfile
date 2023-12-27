FROM ubuntu:latest

# Set the working directory in the image
WORKDIR /home/ec2-user/vishal/docker_work

# Copy the files from the host file system to the image file system
COPY . /home/ec2-user/vishal/docker_work

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 

# Set environment variables
ENV NAME World

# Run a command to start the application
CMD ["python3", "vishal.py"]

