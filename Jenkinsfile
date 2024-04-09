pipeline {
    agent {
        docker {
            image 'maven:latest'
            args '-v C:/Users/ADMIN/.m2/repository:/root/.m2/repository' // Mount Maven local repository to Docker container
        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the Maven project from GitHub repository
                git 'https://github.com/Rsowmya26/dev_assignment.git'
            }
        }
        
        stage('Build and Test') {
            steps {
                // Change the working directory to an absolute path
                bat 'docker run -d -t -v C:/Users/ADMIN/.m2/repository:/root/.m2/repository -w /usr/src/app maven:latest mvn clean install'
            }
        }
    }
}
