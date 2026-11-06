# IS-202 Group 6 Project

## Project Title
IS-202 Group 6 Project

## Team Members
- Abhi Chandu
- Harsh Danayak
- Shruti Gomes
- Cheta Greg Obi
- Chandana Malla

## Objectives
This project includes the following tasks:
- Task 1: Set up the GitHub repository for the project.
- Task 2: Create a login use case diagram to represent the system interactions.
- Task 3: Create a responsive login prototype page and deploy it using a local Docker container.
- Task 4: Package the login page in Docker and publish the image with GitHub Actions.

## Task 4: Docker and GitHub Actions

The root `Dockerfile` serves the login demo in `task_2.html` with NGINX. The page is available at the container's port 80. The GitHub Actions workflow at `.github/workflows/docker.yml` builds the image on pushes to `main` and on manual runs, then publishes both a run-number tag and `latest` to Docker Hub.

### Run locally

From the repository root, build and run the web app:

```sh
docker build -t is-202-group-6-project .
docker run --rm -p 8080:80 --name is202-login is-202-group-6-project
```

Open [http://localhost:8080](http://localhost:8080). The demo login is `demo@example.com` / `demo1234`. Stop the container with Ctrl+C.

### Configure Docker Hub publishing

1. Create a Docker Hub account and a personal access token with permission to push images.
2. In this GitHub repository, open **Settings → Secrets and variables → Actions** and add:
   - `DOCKER_USERNAME`: your Docker Hub username.
   - `DOCKER_PASSWORD`: your Docker Hub personal access token.
3. Push a commit to `main`, or manually run **Build and push Docker image** from the repository's **Actions** tab.
4. After the workflow succeeds, pull and run the published image (replace `<dockerhub-username>` with your username and `<run-number>` with the workflow run number):

```sh
docker pull <dockerhub-username>/is-202-group-6-project:<run-number>
docker run --rm -p 8080:80 <dockerhub-username>/is-202-group-6-project:<run-number>
```

The `latest` tag is published as well:

```sh
docker pull <dockerhub-username>/is-202-group-6-project:latest
```

### Task 4 story breakdown

- As a team member, I want to run the login demo in a Docker container so the application can be tested consistently.
- As a team member, I want GitHub Actions to build and publish the image on updates to `main` so the latest project version is available from Docker Hub.
- As a reviewer, I want documented commands to run the image so I can verify the deployed page locally.

Add these stories to the linked GitHub Project board and update their status as the work is reviewed.

## Submission Links
- GitHub Repository: https://github.com/Sgomes3/IS-202-Group-6-Project.git
- Project Board : https://github.com/users/achandu4/projects/2/views/1
