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
        sh 'docker stop $(docker ps -a -q)'
        sh 'docker rm $(docker ps -a -q)'
        sh 'docker run --rm -d -p 3838:3838 thirupathip/todo-r'
      }
    }
  }
}
