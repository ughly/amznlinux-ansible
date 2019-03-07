FROM amazonlinux

MAINTAINER Joel Gilliland <joel.gilliland@team.neustar>

RUN yum install -y epel-release git wget tar patch

RUN yum -y install python-pip
RUN pip install awscli
RUN pip install ansible
RUN mkdir /etc/ansible
RUN wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py -O /etc/ansible/hosts
RUN wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini -O /etc/ansible/ec2.ini
RUN chmod +x /etc/ansible/hosts
