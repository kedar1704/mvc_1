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
        stage('Send artifact to nexus') {
            steps {
                nexusArtifactUploader artifacts: [[artifactId: 'SNAPSHOT.2.1.1', classifier: '', file: 'target/mvc_1.war', type: 'war']], credentialsId: 'nexus-creds', groupId: 'vpro-maven-group', nexusUrl: '3.110.196.43:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'vprofile-snapshots', version: '1.1'
            }
          }
    }
}
