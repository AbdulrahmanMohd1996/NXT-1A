# Simple Nginx Docker App

This is a simple Nginx application running in a Docker container. It serves a "Hello, World!" HTML page.

## How to Run Locally

1. Clone this repository:
    ```sh
    git clone https://github.com/your-username/simple-nginx-docker-app.git
    ```

2. Navigate to the project directory:
    ```sh
    cd simple-nginx-docker-app
    ```

3. Build the Docker image:
    ```sh
    docker build -t simple-nginx-app .
    ```

4. Run the Docker container:
    ```sh
    docker run -d -p 80:80 simple-nginx-app
    ```

5. Open your browser and go to `http://localhost` to see the "Hello, World!" page.

## Deployment to Kubernetes

1. Make sure you have `kubectl` and `aws` CLI configured.

2. Update the `deploy.sh` script with your AWS EKS cluster name and region.

3. Run the deployment script:
    ```sh
    ./deploy.sh
    ```

4. Access your application using the configured Ingress host (e.g., `http://hello-world.example.com`).

## Files in the Repository

- `Dockerfile`: Defines the Docker image.
- `hello-world.html`: Simple HTML file served by Nginx.
- `deployment.yaml`: Kubernetes deployment configuration.
- `service.yaml`: Kubernetes service configuration.
- `ingress.yaml`: Kubernetes ingress configuration.
- `deploy.sh`: Script to deploy the application to AWS EKS.
