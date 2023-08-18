pipeline { 
  agent any 
 
  options {
    buildDiscarder(logRotator(numToKeepStr: '2', daysToKeepStr: '5'))
  }
 
  environment {
   DOCKER_REGISTRY="https://hub.docker.com"
   DOCKER_IMAGE="jenkins-docker-image"
  }

  stages {
    stage("Checkout your code") {
      steps {
        checkout scm
      }
    } 

    stage("Build Docker image") {
      steps {
        script {
          dockerImage = docker.build("anilnalawade/docker-jenkins-demo/$DOCKER_IMAGE:$BUILD_NUMBER")
          
          docker.withRegistry("$DOCKER_REGISTRY", 'dockerhubToken'){
            dockerImage.push()
          }              
        }
      }
    }

  } 
}
