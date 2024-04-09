pipeline {
    agent {
        dockerContainer {
            image 'maven:latest' // Use the Maven Docker image as the agent
            args '-v /var/run/docker.sock:/var/run/docker.sock' // Mount Docker socket inside the container
        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Fetch the source code from the repository
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/main']], // Adjusted branch name to 'main'
                          userRemoteConfigs: [[url: 'https://github.com/Rsowmya26/dev_assignment.git']]])
            }
        }
        stage('Build') {
            steps {
                // Build Maven project using a batch script
                bat "mvn clean package"
            }
        }
        stage('Test') {
            steps {
                // Run Maven tests using a batch script
                bat "mvn test"
            }
        }
    }
}
