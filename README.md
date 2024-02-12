# Platform Engineer Technical Test

## Building and Running the Image Locally

### Build the Image with Default Port (8080):
```
docker build -t my-go-app .
```

### Run the Container with Default Port:
```
docker run -p 8080:8080 my-go-app
```

### Build the Image with Custom Port:
```
docker build --build-arg PORT=<your-port> -t my-go-app .
```

### Run the Container with Custom Port:
```
docker run -p <your-port>:<your-port> my-go-app
```

## Understanding the GitLab CI Pipeline

### Overview:
  The pipeline automates building and pushing a Docker image compatible with amd64 and arm64 architectures to the GitLab registry using [Docker Buildx]("https://github.com/docker/buildx")

### Changing the Port Number in a Manual Pipeline Run:
  When triggering a pipeline manually in GitLab, you can override the PORT variable by specifying a different port value in the 'CI/CD' > 'Run pipeline' interface under 'Variables'.