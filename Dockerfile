# Use the official golang image from Docker Hub
FROM golang:1.13

# Set the working directory inside the container
WORKDIR /app

# Copy the Go project files into the container
COPY . .

# Build the Go project
RUN go build -o pg_featureserv

# Expose port 9000 to the outside world
EXPOSE 9000

# Command to run the Go project
CMD ["./pg_featureserv"]
