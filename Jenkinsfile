pipeline {
  agent { label 'docker-agent' }
  stages {
    stage("Build") {
      steps {
        echo "building..."
	sh '''#!/bin/bash
           ls
	   docker info
           docker build -t katacoda/jenkins-demo:${BUILD_NUMBER} .
           docker tag katacoda/jenkins-demo:${BUILD_NUMBER} katacoda/jenkins-demo:latest
           docker images'''
      }
    }
    stage("Test") {
      steps {
        echo "Docker run in staging/lab + testing..."
      }
    }
    stage("Push") {
      steps {
        echo "Docker Push"
      }
    }
  }
}
