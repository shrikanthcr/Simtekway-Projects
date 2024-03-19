# Use the Amazon Linux base image
FROM amazonlinux:latest

# Update packages and install httpd
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy custom configuration file if needed
# COPY httpd.conf /etc/httpd/conf/httpd.conf

# Expose port 80
EXPOSE 80

# Start httpd service
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
