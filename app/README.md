# SimpleTimeService

A minimalist Node.js microservice that returns the current UTC timestamp and the client's IP address in JSON format.

### Docker Public image - chethanasv/simple_time_service:latest

## 🛠️ Setup & Run

### Build the Docker Image

```bash
docker build -t simple-time-service .
```

### Run the Docker Image

```bash
docker run -d -p 8080:8080 simple-time-service
```

### Test the output

Check http://localhost:8080/

### Output
![alt text](image.png)