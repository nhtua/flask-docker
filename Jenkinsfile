pipeline {
  agent none
  environment {
    DOCKER_IMAGE="nhtua/flask-docker"
  }

  stages {
    stage("Test") {
      agent {
          docker {
            image 'python:3.8-slim-buster'
            args '-u 0:0 -v /tmp:/root/.cache'
          }
      }
      steps {
        sh "pip install poetry"
        sh "poetry install"
        sh "poetry run pytest"
      }
    }
    stage("build") {
      agent { node {label 'master'}}
      steps {
        sh "docker build -t ${DOCKER_IMAGE}:${BUILD_NUMBER} . "
        sh "docker tag ${DOCKER_IMAGE}:${BUILD_NUMBER} ${DOCKER_IMAGE}:latest"
        sh "docker image ls | grep ${DOCKER_IMAGE}"
      }
    }
  }
}
