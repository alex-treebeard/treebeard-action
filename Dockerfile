FROM python:3.7

RUN apt-get update && apt-get install -y docker.io
RUN pip install git+https://github.com/treebeardtech/treebeard.git@action#subdirectory=treebeard-lib

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
