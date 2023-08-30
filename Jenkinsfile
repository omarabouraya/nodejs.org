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
         stage ('deployment application'){
            steps {
            
                          sh """
                    kubectl apply -f deployment.yml -n application
                    kubectl apply -f app_loadbalancer.yml -n application

                echo Successful
            """
            }
        
        }
    }
}
