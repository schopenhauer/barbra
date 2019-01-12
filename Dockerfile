FROM fedora:27

# Prerequisites
RUN dnf install -y git python2-pip gcc python2-devel python2-crypto python2-pycurl libcurl-devel ansible

# Upgrade python's pip
RUN pip install --upgrade --user pip

# Generate SSH key
RUN ssh-keygen -f /root/.ssh/id_rsa -t rsa -q -N ""

# Clone the Streisand repository and enter the directory.
RUN git clone https://github.com/StreisandEffect/streisand.git

# Run the installer for Ansible and its dependencies.
WORKDIR streisand
RUN ./util/venv-dependencies.sh ./venv

# Activate the Ansible packages that were installed.
RUN source ./venv/bin/activate

# Execute the Streisand script.
#ENTRYPOINT ./streisand

CMD bash
