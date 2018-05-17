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

        stage('Run') {
                    steps {
                        bat './jenkins/scripts/run.bat'
                    }
                }
        stage('Test'){
                steps {
                    bat './jenkins/scripts/test.bat'
                }
            }
        stage('Kill'){
            steps{
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                bat './jenkins/scripts/kill.bat'
            }
        }
    }
}