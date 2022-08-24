[![CircleCI](https://dl.circleci.com/status-badge/img/gh/bisi-dev/mlmapi/tree/main.svg?style=svg)]()
## Project Overview

This is a  microservice architecture built with Kubernetes. The purpose of this microservice is to enable machine learning training and prediction.
This prediction evolve around house prices in boston. You can read about it  from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).


- `run_docker.sh` : Deploy containerized application using Docker and make a prediction `make_prediction.sh`
- `upload_docker.sh`: Upload container to Docker Hub.
- `run_kubernetes.sh` : Run the deployed application in a Kubernetes cluster and make a prediction `make_prediction.sh`
- `.circleci/config.yml`: Integrate with CircleCI to indicate code has been tested

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

- Test your project code using linting
- Complete a Dockerfile to containerize this application
- Deploy your containerized application using Docker and make a prediction
- Improve the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl

## HOW TO START

**Pre-Requisites**: Python 3.7, Docker Desktop, Minikube

After Forking/Cloning, you can get up and running in just a few minutes. From the project's root folder:

1. **Setup the Environment**

Create a virtualenv and activate it

```
python3 -m venv <your_venv>
source <your_venv>/bin/activate
```

2. **Install dependencies**

Run `make install` to install the necessary dependencies

3. **Run app.py**

- Standalone: `python app.py`
- Run in Docker: `./run_docker.sh` + `make_prediction.sh`
- Run in Kubernetes: `./run_kubernetes.sh` + `make_prediction.sh`
