pipeline {
  agent any
stages {
          stage('Build') {
            steps {
                // Get some code from a GitHub repository
                 git branch: 'main',
                    url: 'https://github.com/omarabouraya/nodejs.org.git'

            }
        }
  stages {
    stage("install dependencies") {

      steps {
        sh 'npm remove node_modules'
        sh 'npm remove pakage-lock.json'
        sh 'npm install --save-dev cross-env npm run build'
      }

    }
        stage("Test") {

            steps {
              sh 'echo est:unit'

              // sh 'npm install --save-dev cross-env npm run test'

            }

          }
    }
        stage("Build") {

            steps {

              sh 'npm run build'
            }

          }
      }
    


