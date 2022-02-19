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
             

         stage('Build package artifact') {
            steps {
                sh 'mvn clean package'
                sh 'pwd'
                sh 'find . -type d -name "target"'
               // sh 'ls -ltr && cd webapp/'
	      //sh 'ls -ltr'
                }
                }


         stage('Build Docker-Image') {
            steps {
                sh 'find . -type f -iname "*.war"'
                sh 'docker build -t syedkamil108/my-app:1.0.0 .'
                }
                }
        

  	 stage('Push Docker-Image to Docker-Hub') {
            steps {
                 withCredentials([string(credentialsId: 'docker-hub-pswd-id', 
                 variable: 'docker-hub-pswd')]) {
                sh "docker login -u syedkamil108 -p {$docker-hub-pswd}"
		}
                sh 'docker push syedkamil108/my-app:1.0.0'
                }
                }
 

}
}
