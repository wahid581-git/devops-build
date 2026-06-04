pipeline {
    agent any

    environment {
        DEV_IMAGE = "wahid581doc/wahid581-dev:latest"
        PROD_IMAGE = "wahid581doc/wahid581-prod:latest"
    }

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t devops-build-app .'
            }
        }

        stage('Push DEV') {
            when {
                branch 'dev'
            }
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub',
                    usernameVariable: 'USER',
                    passwordVariable: 'PASS'
                )]) {

                    sh '''
                    echo $PASS | docker login -u $USER --password-stdin

                    docker tag devops-build-app $DEV_IMAGE

                    docker push $DEV_IMAGE
                    '''
                }
            }
        }

        stage('Push PROD') {
            when {
                branch 'main'
            }

            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub',
                    usernameVariable: 'USER',
                    passwordVariable: 'PASS'
                )]) {

                    sh '''
                    echo $PASS | docker login -u $USER --password-stdin

                    docker tag devops-build-app $PROD_IMAGE

                    docker push $PROD_IMAGE
                    '''
                }
            }
        }
    }
}
