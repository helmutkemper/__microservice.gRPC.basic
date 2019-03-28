FROM node:latest

RUN mkdir -p /node/src/app
RUN mkdir -p /gRPC
WORKDIR /node/src/app

RUN export REPO_ROOT=./gRPC
#RUN git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc $REPO_ROOT

COPY . /node/src/app
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
RUN cd /node/src/app/nodeJs

WORKDIR /

#RUN npm install
#RUN node /go/src/app/nodeJs/dynamic_codegen/greeter_client.js

EXPOSE 50051:50051
EXPOSE 80:80

ENTRYPOINT ["/nodeJs/docker-entrypoint.sh"]

