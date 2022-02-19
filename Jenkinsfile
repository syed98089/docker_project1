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
              withCredentials([string(credentialsId: 'dockerhub-id', variable: 'dockerhubpasswd')]) {
                sh "docker login -u syedkamil108 -p ${dockerhubpasswd}"
}
          	
                sh 'docker push syedkamil108/my-app:1.0.0'
                }
                }
	 stage('Deploy Docker-Image and Run Docker Container on Web-server') {
                  
            steps {
                script {
		//def dockerCmd = sh 'docker run -p 8000:8000 -d --name myapp syedkamil108/my-app:1.0.0'     
                 sshagent(['webserver-id']) {
                    
                  def dockerCmd = sh 'docker run -p 8000:8000 -d --name myapp syedkamil108/my-app:1.0.0'

		echo "${dockerCmd}"
                
//sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.26.96 docker run -p 8000:8000 -d --name myapp syedkamil108/my-app:1.0.0"
     	         sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.26.96 echo "${dockerCmd}"'
                
                }
                }
                }
                }


}
}
