pipeline {
  stages {
    stage("Test") {
      agent { docker "python:3.8-slim-buster" }
      steps {
        sh "poetry install"
        sh "poetry run pytest"
      }
    }
    stage("build") {
      agent{ label 'docker-agent' }
      sh "echo BUILDING IMAGE..."
    }
  }
}
