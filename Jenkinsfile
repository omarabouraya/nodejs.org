pipeline {
  agent any

  stages {
    stage("install dependencies") {

      steps {
        sh 'npm install'
      }

    }

    stage(" "){
      parallel {
        stage("Test") {

            steps {

              sh 'npm run  test:unit'

            }

          }
        stage("Build") {

            steps {

              sh 'npm run build'
            }

          }
      }
    }
  }
}

