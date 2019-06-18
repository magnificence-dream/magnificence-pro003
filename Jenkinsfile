pipeline {
  agent {
    node {
      label 'slave-pipeline'
    }

  }
  stages {
    stage('git') {
      steps {
        git(url: 'https://github.com/magnificence-dream/magnificence-pro003.git', branch: 'master')
      }
    }
    stage('Build') {
      steps {
        echo 'This is a build step'
        echo 'see me ,this is magnificence'
        sh ''' container(\'kubectl\') {
      kubectl version
 }'''
        }
      }
      stage('Test') {
        steps {
          echo 'This is a test step'
        }
      }
      stage('Deploy') {
        steps {
          echo 'This is a deploy step'
        }
      }
    }
  }