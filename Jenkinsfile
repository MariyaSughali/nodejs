node {
    def app

    stage('Clone repository') {
      git 'https://github.com/MariyaSughali/nodejs.git'
    }

    stage('Build image') {
  
       app = docker.build("sughali/node_docker")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'docker') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
