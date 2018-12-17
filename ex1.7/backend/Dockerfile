FROM ubuntu:16.04

EXPOSE 8000
RUN apt-get update && apt-get install -y git curl
RUN git clone https://github.com/docker-hy/backend-example-docker
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs
RUN cd backend-example-docker && npm install
CMD FRONT_URL=http://localhost:5000 npm start --prefix backend-example-docker

