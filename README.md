# Dockerized Nginx Static Website

## Project Overview
This project demonstrates how to deploy a static website using Nginx in a Docker container.  
It is a hands-on example of containerizing a web application, making it easy to run consistently across different environments.

**Key goals of this project:**
- Learn containerization of web apps with Docker
- Understand Dockerfile creation and image building
- Use Nginx to serve static content in a containerized setup
- Practice multi-step Docker workflows and container management

---

## Features
- Static website served via Nginx
- Dockerized for consistent environment setup
- Easy to deploy locally or on cloud platforms
- Includes screenshots for setup verification

---

## Folder Structure
```plaintext
project-folder/
├── Dockerfile       # Dockerfile to create Nginx container serving website
├── index.html       # Main HTML page of the static website
├── README.md        # Project documentation
└── screenshots/     # Screenshots of Docker build and container running
```
---

## Technologies Used
- **Web Server:** Nginx  
- **Containerization:** Docker  
- **Frontend:** HTML (static website)  

---

## Setup Instructions

1. Clone the repository:  
```bash
git clone <YOUR_REPO_URL>
cd project-folder
```

2. Build the Docker image:
```bash
docker build -t nginx-static-site .
```

3. Run the container:
```bash
docker run -d -p 8080:80 --name my-nginx-site nginx-static-site
```

This will:

Run the Nginx container in detached mode
Map port 80 on your host to port 80 inside the container
Serve your static website at http://localhost:80

Verify the container:
docker ps
docker logs my-nginx-site
Stop and remove the container:
docker stop my-nginx-site
docker rm my-nginx-site

## Dockerfile
```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
```

## Key Commands
| Command | Purpose |
|---------|---------|
| `docker build -t nginx-static-site .` | Build Docker image |
| `docker run -d -p 8080:80 --name my-nginx-site nginx-static-site` | Run container |
| `docker ps` | List running containers |
| `docker logs my-nginx-site` | View container logs |
| `docker stop my-nginx-site` | Stop container |
| `docker rm my-nginx-site` | Remove container |

Author
Pallavi Agarwal – DevOps & Containerization Enthusiast