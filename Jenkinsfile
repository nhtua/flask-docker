pipeline {
  agent any
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
      agent{ label 'docker-agent' }
      steps {
        sh "echo BUILDING IMAGE..."
      }
    }
  }
}
