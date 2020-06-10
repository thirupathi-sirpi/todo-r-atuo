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
        sh 'docker run -it -d thirupathip/todo-r -p 3838:3838'
      }
    }
  }
}
