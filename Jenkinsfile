pipeline {
    agent {
        docker {
            // Use the Maven Docker image as the agent
            image 'maven:latest'
       
        }
    }
    stages {
        stage('Checkout') {
            steps {
                // Clone the Maven project from the GitHub repository
                git 'https://github.com/Rsowmya26/dev_assignment.git'
            }
        }
        stage('Build') {
            steps {
                // Build the Maven project
                bat 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Run tests for the Maven project
                bat 'mvn test'
            }
        }
    }
}
