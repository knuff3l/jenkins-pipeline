pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                bat 'npm install'
            }
        }

        stage('Deliver') {
                    steps {
                        bat './jenkins/scripts/deliver.bat'
                        bat 'npm start'
                        input message: 'Finished using the web site? (Click "Proceed" to continue)'
                        bat './jenkins/scripts/kill.bat'
                    }
                }
    }
}