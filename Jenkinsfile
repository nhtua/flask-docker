pipeline {
  agent none
  environment {
    DOCKER_IMAGE="nhtua/flask-docker"
  }

  stages {
    stage("Test") {
      agent {
          docker { image 'python:3.8-slim-buster' }
      }
      steps {
        sh "sudo pip install --user poetry"
        sh "poetry install"
        sh "poetry run pytest"
      }
    }
    stage("build") {
      agent { label "docker-agent"}
      steps {
        sh "docker build -t ${DOCKER_IMAGE}:${BUILD_NUMBER} . "
        sh "docker tag ${DOCKER_IMAGE}:${BUILD_NUMBER} ${DOCKER_IMAGE}:latest"
        sh "docker images ls | grep ${DOCKER_IMAGE}"
      }
    }
  }
}
