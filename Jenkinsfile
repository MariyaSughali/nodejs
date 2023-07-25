pipeline{
    agent any
    options{
        buildDiscarder(logRotator(numToKeepStr: '5', daysToKeepStr: '5'))
        timestamps()
    }
    environment{
        
        registry = "sughali/demodocker"
        registryCredential = 'dockerhub'        
    }
    
    stages{
        stage('Clone repository') {
      git 'https://github.com/MariyaSughali/nodejs.git'
    }
        
       stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
       stage('Deploy Image') {
      steps{
          bat 'cd C:\\Users\\MariyaSughali\\Desktop\\node_docker'
        bat 'docker login'
         script {
           // docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          //}
        }
      }
    }
}
}

 //stage('Push image') {
      //  bat 'cd C:\\Users\\MariyaSughali\\Desktop\\node_docker'
    //    bat 'docker login'
      //  bat 'docker commit 69e4e0944350e57325f64bb7ba85e4bac2db17b6da24c8ac95fb8e769b8c077e sughali/node_docker'
      //  bat 'docker image tag sughali/node_docker:2 sughali/node_docker:2 '
      //  bat 'docker push sughali/node_docker:2'
      // }
