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

        stage('run') {
            steps {
              bat """
              git switch jenkins/ruby
              git merge origin/jenkins/ruby-1
              git push -u origin jenkins/ruby
              """
            }
        }
    }
}

