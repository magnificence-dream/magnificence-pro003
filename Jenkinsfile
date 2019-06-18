pipeline {
  agent any
  stages {
    stage('git') {
      steps {
        git(url: 'https://github.com/magnificence-dream/magnificence-pro003.git', branch: 'master')
      }
    }
	 stage('Build') {
            steps{
                echo 'This is a build step' 
            }
        }
        stage('Test') {
            steps{
                echo 'This is a test step'  
            }
        }
        stage('Deploy') {
            steps{
                echo 'This is a deploy step'    
            }
        }
  }
}