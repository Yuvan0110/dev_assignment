pipeline {
    agent {
        docker {
            image 'maven:latest' // Use the Maven Docker image as the agent
            args '-v /var/run/docker.sock:/var/run/docker.sock' // Mount Docker socket inside the container
        }
    }
    
    stages {
        stage('Build') {
            steps {
                // Checkout source code from SCM
                checkout scm // This will automatically check out the code from the URL specified in Jenkins configuration
                
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
