FROM registry.redhat.io/rhel10/rhel-bootc

RUN dnf install -y \
    httpd \
    vim \
    git \
    firewalld && \
    dnf clean all

RUN hostnamectl set-hostname image-now-demo.example.com

RUN systemctl enable httpd

COPY index.html /var/www/html/index.html