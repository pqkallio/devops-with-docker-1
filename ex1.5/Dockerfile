FROM ubuntu:16.04

ENTRYPOINT ["serve", "-s", "-l", "5000", "frontend-example-docker/dist"]
EXPOSE 5000
RUN apt-get update && apt-get install -y git curl
RUN git clone https://github.com/docker-hy/frontend-example-docker.git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs
RUN npm install -g serve
RUN cd frontend-example-docker && npm install && npm run build

