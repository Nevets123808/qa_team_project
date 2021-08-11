pipeline {
    agent any
    environment {
        docker_password = credentials('docker_password')
    }
    stages {
        stage('Give exercute permissions to user') {
            steps {
                sh 'chmod +x ./scripts/*.sh'
            }
        }
        stage('Run script preinstallation.sh') {
            steps {
                sh './scripts/preinstallation.sh'
            }
        }
        stage('Build Images') {
            steps {
                sh '.scripts/building_images.sh'
            }
        }
        stage('Push images to Dockerhub') {
            steps {
                sh 'docker login -u stevenbourn -p ${docker_password}'
                sh './scripts/pushing_images.sh'
            }
        }
        stage('Deploy Kubernetes') {
            steps {
                sh './scripts/deploying_kubernetes.sh'
            }
        }
        stage('Run script postinstallation.sh') {
            steps {
                sh './scripts/postinstallation.sh'
            }
        }
    }
}