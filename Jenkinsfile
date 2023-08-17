pipeline { 
  agent any 
  
  environment {
   DOCKER_REGISTRY="https://hub.docker.com/anilnalawade/docker-jenkins-demo"
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
          dockerImage = docker.build("$DOCKER_REGISTRY/DOCKER_IMAGE:$BUILD_NUMBER")
          
          docker.withRegistry("$DOCKER_REGISTRY", 'docker-hub-token'){
            dockerImage.push()
          }              
        }
      }
    }

  } 
}
