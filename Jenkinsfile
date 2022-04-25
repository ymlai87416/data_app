pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: docker
            image: rancher/dind:latest
            securityContext:
              privileged: true
            command:
            - cat
            tty: true
        '''
    }
  }
  environment{
    DOCKERHUB_CREDENTIALS = credentials('ymlai87416-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        container("docker"){
          sh '''docker build -t ymlai87416/data-app:latest .'''
        }
      }
    }
    stage('Login'){
        steps {
            container("docker"){
            sh '''echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u ${DOCKERHUB_CREDENTIALS.username} '''
            }
        }
    }
    stage('Push') {
      steps {
        container("docker"){
          sh '''docker push ymlai87416/data-app:latest'''
        }
      }
    }

  }
  post{
    always{
        container("docker"){
            sh '''docker logout'''
        }
    }
  }
}