pipeline {
  agent{ label 'docker-agent' }

  stages {
    stage("Test") {
      steps {
        sh "poetry install"
        sh "poetry run pytest"
      }
    }
  }
}
