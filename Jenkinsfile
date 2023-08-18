pipeline { 
//  agent {
//    docker { image 'node:18.17.1-alpine3.18' }
//  }

//  agent none 
 
  agent { dockerfile true }

  options {
    buildDiscarder(logRotator(numToKeepStr: '2', daysToKeepStr: '5'))
  }
 
  environment {
   DOCKER_REGISTRY="https://hub.docker.com"
   DOCKER_IMAGE="jenkins-docker-image"
  }

  
  stages {



//        stage('Back-end') {
//            agent {
//                docker { image 'maven:3.9.3-eclipse-temurin-17-alpine' }
//            }
//            steps {
//                sh 'mvn --version'
//            }
//        }
//
//        stage('Front-end') {
//            agent {
//                docker { image 'node:18.17.1-alpine3.18' }
//            }
//            steps {
//                sh 'node --version'
//            }
//        }

   
    stage('Test') {
            steps {
                sh 'node --version'
            }
        }


//    stage("Checkout your code") {
//      steps {
//        checkout scm
//      }
//    } 
//
//    stage("Build Docker image") {
//      steps {
//        script {
//          dockerImage = docker.build("anilnalawade/docker-jenkins-demo/$DOCKER_IMAGE:$BUILD_NUMBER")
//          
//          docker.withRegistry("$DOCKER_REGISTRY", 'dockerhubToken'){
//            dockerImage.push()
//          }              
//        }
//      }
//    }

  } 
}
