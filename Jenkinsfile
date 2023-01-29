pipeline {
    agent any

    stages {
        stage('test') {
            steps {
               bat ''' ruby unit_test.rb '''
            }
        }
    }
}
