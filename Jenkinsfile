pipeline {
    agent {
        docker {
            image 'maven:latest'
            args '-v C:/Users/ADMIN/.m2/repository:/root/.m2/repository'

        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the Maven project from GitHub repository
                bat 'https://github.com/Rsowmya26/dev_assignment.git'
            }
        }
        
        stage('Build and Test') {
            steps {
                // Clean the project to remove any existing build artifacts and Compile the source code, run tests
                bat 'mvn clean install'
            }
        }
    }
}
