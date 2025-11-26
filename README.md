# Docker Demo Project

This repository contains:
- Dockerfile
- demo.sh (runs basic Linux commands and opens a shell)
- README.md (this file)

Build: `docker build -t docker-demo:latest .`
Run: `docker run --rm -it docker-demo:latest`

1. Five DevOps Concepts
1) Version Control (Git)

Version control means tracking changes to your code so you can go back to older versions, collaborate with others, and avoid losing work. Git is the most popular version control tool.

2) Containerization (Docker)

Containerization packages your application and environment into small isolated boxes called containers so it runs the same everywhere—your laptop, server, or cloud.

3) CI/CD (Continuous Integration / Continuous Deployment)

CI/CD automates building, testing, and deploying your code. Whenever you push to GitHub, your pipeline automatically runs tasks like building Docker images, running tests, or deploying apps.

4) Infrastructure as Code (IaC)

Infrastructure (servers, networks, databases) is created and managed using code instead of manual setup. Tools include Terraform, Ansible, and CloudFormation.

5) Monitoring & Logging

Monitoring tracks system performance (CPU, RAM, errors). Logging records events. Together they help identify issues, debug failures, and ensure applications run smoothly.

2. How I Completed This Assignment (Step-by-Step Explanation)

Below is a simple explanation of how the full assignment was done along with the exact Docker and Git commands used.

Step 1: Create the Project Folder

I created a project folder on my system:

mkdir docker-demo-project
cd docker-demo-project

Step 2: Create the Required Files

I created three files:

Dockerfile

demo.sh

README.md

They contain the Docker configuration, the Linux demo script, and documentation.

Step 3: Initialize Git and Make My First Commit
git init
git add Dockerfile demo.sh README.md
git commit -m "Initial commit with Dockerfile, script, and README"


This saved my project’s initial version.

Step 4: Create a GitHub Repository and Push Code

On GitHub:

Click New Repository

Name it docker-demo-project

Create repository (empty)

Then push the code:

git remote add origin https://github.com/<your-username>/docker-demo-project.git
git branch -M main
git push -u origin main


This uploaded all project files to GitHub.

Step 5: Build the Docker Image

In the project folder:

docker build -t docker-demo:latest .


This reads the Dockerfile and builds an image named docker-demo.

Step 6: Run the Docker Container
docker run --rm -it docker-demo:latest


The container executes demo.sh, showing:

pwd

ls

whoami

uname

df

free

ps

ip addr

Then it opens an interactive terminal inside the container.

3. How This Assignment Helps Me Learn DevOps, Linux, Git, and Docker
Docker

I learned how to create a Dockerfile.

I built an image and ran a container.

I saw how Linux works inside Docker.

I learned how to push Docker images to a registry.

Linux

The script demo.sh shows important Linux commands:

pwd

ls

uname

df

free

ps

ip addr

Using these commands inside a container teaches how real servers work.

Git

I initialized a repository

Added files

Committed changes

Created a GitHub repo

Pushed my code

This is the exact workflow used in real DevOps projects for collaboration.

DevOps

This assignment covers real DevOps steps:

Version control (Git)

Containerization (Docker)

Automation & consistency (Dockerfile)

Documentation (README.md)

Sharing code (GitHub)

Sharing images (Docker Hub)

This is the same workflow used in CI/CD pipelines in companies.