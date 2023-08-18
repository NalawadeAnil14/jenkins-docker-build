pipeline { 
  agent {
    docker { image 'node:18.17.1-alpine3.18' }
  }
 
  options {
    buildDiscarder(logRotator(numToKeepStr: '2', daysToKeepStr: '5'))
  }
 
  environment {
   DOCKER_REGISTRY="https://hub.docker.com"
   DOCKER_IMAGE="jenkins-docker-image"
  }

  
  stages {
    stage('Test') {
            steps {
                sh 'node --version'
            }
        }


#    stage("Checkout your code") {
#      steps {
#        checkout scm
#      }
#    } 
#
#    stage("Build Docker image") {
#      steps {
#        script {
#          dockerImage = docker.build("anilnalawade/docker-jenkins-demo/$DOCKER_IMAGE:$BUILD_NUMBER")
#          
#          docker.withRegistry("$DOCKER_REGISTRY", 'dockerhubToken'){
#            dockerImage.push()
#          }              
#        }
#      }
#    }

  } 
}
