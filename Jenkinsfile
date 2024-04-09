pipeline {
    agent {
        docker {
            image 'maven:latest'
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
                bat 'mvn clean install'
            }
        }
    }
}
