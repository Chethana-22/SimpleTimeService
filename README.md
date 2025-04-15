# SimpleTimeService

A minimalist Node.js microservice that returns the current UTC timestamp and the client's IP address in JSON format.

## 🛠️ Setup & Run

### Pull the Docker Image

```bash
docker pull chethanasv/simple_time_service:latest
```

### Run the Docker Image

```bash
docker run -d -p 8080:8080 chethanasv/simple_time_service:latest
```

### Test the output

Check http://localhost:8080/

### Output
![alt text](image.png)