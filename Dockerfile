# Step 1: Build the Go application
FROM golang:1.18-alpine AS builder
WORKDIR /app
COPY . .
RUN cd /app/golangrepo
RUN go mod init golangrepo
RUN go build -o main .

# Step 2: Create a small image with the Go binary
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]
