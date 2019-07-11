# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from golang v1.11 base image
FROM golang:1.12

# Add Maintainer Info
LABEL maintainer="Hank Lin<raptorserver35@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /gincowbay

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
COPY . .

# Download all the dependencies
# https://stackoverflow.com/questions/28031603/what-do-three-dots-mean-in-go-command-line-invocations
# RUN go get -d -v ./...

# Install the package
# RUN go install -v ./...

RUN cd /gincowbay && go build

# This container exposes port 8080 to the outside world
EXPOSE 8080
ENTRYPOINT ./gincowbay
# Run the executable
# CMD ["go-docker"]