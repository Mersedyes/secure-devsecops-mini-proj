pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://gitlab.com/Mersedyes/secure-devsecops-mini-proj.git'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t secure-devsecops-mini-proj .'
            }
        }
        stage('Push to Registry') {
            steps {
                // if using DockerHub
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USER')]) {
                    sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
                    sh 'docker tag secure-devsecops-mini-proj Mersedyes/secure-devsecops-mini-proj'
                    sh 'docker push Mersedyes/secure-devsecops-mini-proj'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment/flask-deployment.yaml'
                sh 'kubectl apply -f deployment/flask-service.yaml'
            }
        }
    }
}
