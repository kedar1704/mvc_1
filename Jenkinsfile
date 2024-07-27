pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }

    stages {
        stage('Clean workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Code download') {
            steps {
                git branch: 'main', url: 'https://github.com/kedar1704/mvc_1.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean test install'
            }
          }
    }
}
