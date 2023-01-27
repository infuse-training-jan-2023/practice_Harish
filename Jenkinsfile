pipeline {
    agent any

    stages {
        stage('build') {
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
