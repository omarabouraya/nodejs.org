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
        stage('continuous integration') {
            steps {
                  withCredentials([usernamePassword(credentialsId: 'dockerhub_key', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')])
                {
                    sh " docker login -u ${USERNAME} -p ${PASSWORD}"
                    sh " docker build -t nodejs-image33 ."
                    sh " docker tag nodejs-image33:latest omarkamalabouraya/nodejs-image33"
                    sh " docker push omarkamalabouraya/nodejs-image33"
                    
                }
            }    
        }
          stage('run unit tests') {
            steps {
                    sh "npm install -g cspell"
                    echo "--------------------------------------------------------------"
                    sh "node_modules/.bin/cspell "resources/js/**" --color"
                    echo "--------------------------------------------------------------"
                    sh "node_modules/.bin/cspell "resources/sass/**" --colorl"
                    echo "--------------------------------------------------------------"
                    sh "node_modules/.bin/cspell "resources/views/**" --color"
                    echo "--------------------------------------------------------------"
                    sh "node_modules/.bin/cspell "app/**" --color"
          
            }    
        }
         stage ('deployment application'){
            steps {
            
                          sh """

                echo Successful
            """
            }
        
        }
    }
}
