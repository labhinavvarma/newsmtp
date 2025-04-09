#Build the Docker image:
docker build -t smtp-mcp-server .



#Run the container
docker run -p 5000:5000 smtp-mcp-server