pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("your-image-name:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.run("your-image-name:latest", "-p 8080:3000")
                }
            }
        }
    }
}
