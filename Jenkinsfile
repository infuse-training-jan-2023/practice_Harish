pipeline {
    agent any

    stages {
        stage('test') {
            steps {
               bat ''' ruby unit_test.rb '''
            }
        }

        stage('run') {
            steps {
              bat """
              git switch jenkins/ruby
              git merge origin/jenkins/ruby-1
              git push origin/jenkins/ruby
              """
            }
        }
    }
}

