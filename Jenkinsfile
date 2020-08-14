pipeline {
  agent { label "docker-agent"}
  stages {
    stage("Test") {
      agent {
        docker {
          image "python:3.8-slim-buster"
        }
      }
      steps {
        sh "poetry install"
        sh "poetry run pytest"
      }
    }
    stage("build") {
      steps {
        sh "echo BUILDING IMAGE..."
      }
    }
  }
}
