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
                checkout 'git@https://github.com/Rsowmya26/dev_assignment.git'
                
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
