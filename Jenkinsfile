node {
    def app

    stage('Clone repository') {
      git 'https://github.com/MariyaSughali/nodejs.git'
    }

    stage('Build image') {
  
       app = docker.build("sughali/node_docker")
    }

    //stage('Test image') {
     //   app.inside {
       //     sh 'echo "Tests passed"'
       // }
    //}

    stage('Push image') {
        bat 'cd C:\\Users\\MariyaSughali\\Desktop\\node_docker'
        bat 'docker login'
        bat 'docker commit 69e4e0944350e57325f64bb7ba85e4bac2db17b6da24c8ac95fb8e769b8c077e sughali/node_docker'
        bat 'docker image tag sughali/node_docker:latest registry-host:5000/sughali/node_docker:latest'
        bat 'docker push sughali/node_docker:latest'
        }
    }
}
