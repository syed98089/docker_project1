pipeline {
    agent any
       tools{
           maven "Maven"
              }
    stages {
        stage('Checkout') {
            steps {
              checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-creds', url: 'https://github.com/syed98089/docker_project1.git']]])
                 }
                }
             

         stage('Build for package artifact') {
            steps {
                sh 'mvn clean package'
                }
                }

         stage('Build Docker-Image') {
            steps {
                
                sh 'docker build -t syedkamil108/my-app:1.0.0 .'
                }
                }

}
}
