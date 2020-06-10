pipeline {
  agent any
  stages {
    stage('Docker Build') {
      steps {
        sh 'docker build -t thirupathip/todo-r .'
      }
    }
    stage('Docker Run') {
      steps {
        sh 'docker run -d 300:80 thirupathip/todo-r'
      }
    }
  }
}
