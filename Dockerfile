# Set Image Tag
ARG GO_IMAGE_TAG=alpine3.19

# Use golang base image
FROM golang:${GO_IMAGE_TAG}

# Set working directory
WORKDIR /app

# Copy all root files
COPY . .

# Install dependencies
RUN go mod download

# Build the application
RUN go build -o /webserver

# Set the PORT environment variable and expose it
ENV PORT 8080
EXPOSE $PORT

# Specify the entrypoint command to run on container startup
ENTRYPOINT ["/webserver"]
