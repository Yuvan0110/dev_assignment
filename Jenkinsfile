pipeline {
    agent {
        docker {
            // Use the Maven Docker image as the agent
            image 'maven:latest'
            // Specify additional options if needed
            args '-v /var/run/docker.sock:/var/run/docker.sock'
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
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Run tests for the Maven project
                sh 'mvn test'
            }
        }
    }
}
