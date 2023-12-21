
pipeline {
    agent any
    
    environment {
        PATH_TO_VENV = './venv/bin'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/SaharGalimidi/python-ci-cd-jenkins-demo.git']])
            }
        }
        stage('Create Environment') {
            steps {
                sh "python3 -m venv venv"
                sh "chmod +x venv/bin/activate"
                sh "${env.PATH_TO_VENV}/activate"
            }
        }
        stage('Install dependencies') {
            steps {
                sh "${env.PATH_TO_VENV}/pip install Flask"
            }
        }
        stage('Run tests') {
            steps {
                sh "${env.PATH_TO_VENV}/python3 -m unittest discover"
            }
        }
    }
}
