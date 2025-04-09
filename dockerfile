FROM python:3.13-slim

# Set the working directory inside the container to /app.
WORKDIR /app

# Copy all files from the current directory into /app in the container.
COPY . /app

# Install required Python packages from requirements.txt.
RUN pip install --no-cache-dir -r requirements.txt
RUN mkdir -p /smtp_server/config
ENV CONFIG_PATH=/smtp_server/config/smtp_config.json

# Expose port 8081 so that the container can accept incoming connections.
EXPOSE 5000

# Define the command to run your SSE server.
CMD ["python", "smtp_server.py"]