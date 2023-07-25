node {
    def app

    stage('Clone repository') {
      git 'https://github.com/MariyaSughali/nodejs.git'
    }

    stage('Build image') {
       bat 'cd C:\\Users\\MariyaSughali\\Desktop\\node_docker'
       bat 'docker build -t sughali/node_docker:$BUILT_NUMBER .'
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
        bat 'docker image tag sughali/node_docker:1 sughali/node_docker:1 '
        bat 'docker push sughali/node_docker:1'
        }
    }

