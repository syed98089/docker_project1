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

       
}
}
