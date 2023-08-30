pipeline {
  agent any

  stages {
    stage("install dependencies") {

      steps {
        sh 'npm remove node_modules'
        sh 'npm remove pakage-lock.json'
        sh 'npm install'
      }

    }

    stage(" "){
      parallel {
        stage("Test") {

            steps {
              sh 'echo est:unit'

              // sh 'npm run  test:unit'

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

