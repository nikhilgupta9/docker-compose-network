#Getting python 3.11
FROM python:3.11-slim

#Updating packages and installing curl
RUN apt-get update && \
    apt-get -y install curl

#Creating a folder 'app' and changing directory
WORKDIR /app

#Copying all files into app
COPY . .

#Setting python path to run uvicorn
ENV PYTHONPATH "${PYTHONPATH}:/app/src/main/python"

#Installing all packages in requirements.txt
RUN pip install -r requirements.txt

