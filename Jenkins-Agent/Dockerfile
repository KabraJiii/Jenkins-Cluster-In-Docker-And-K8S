# Start from an official Ubuntu base image
FROM ubuntu:22.04

# Set environment variables to suppress interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required packages
RUN apt update && \
    apt install -y sudo wget vim fontconfig openjdk-21-jre && \
    apt install -y openssh-server && \
    mkdir /var/run/sshd && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "root:admin" | chpasswd && \
    apt clean

# Expose SSH port
EXPOSE 22

# Start SSH service by default
CMD ["/usr/sbin/sshd", "-D"]
