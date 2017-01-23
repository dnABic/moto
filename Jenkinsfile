properties([pipelineTriggers([[$class: 'GitHubPushTrigger']])]) 

node {
  stage('Checkout') {
    checkout scm
  }
  stage('Build') {
    echo 'Hello World v9'
  }
}
