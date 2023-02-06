pipeline {
    agent {
            label "jenkins-slave-harish"
            }
    stages {
        stage('test') {
            steps {
               bat ''' ruby unit_test.rb '''
            }
        }
    }
}
