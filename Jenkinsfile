pipeline {
    agent {
            label "jenkins-slave-harish"
            }
    stages {
        stage('compile') {
            steps {
               bat ''' 
                java duplicateChar.java
                '''
            }
           
        }
         stage('run') {
            steps {
               bat ''' 
                javac duplicateChar.java
                '''
            }
           
        }
    }
}
