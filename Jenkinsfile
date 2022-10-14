pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script {
                    dockerImage = docker.build("mcoiraton/helloworldtest:latest")
                }
            }
        }
        stage('push') {
            steps {
                echo 'Pushing..'
                script {
                    withDockerRegistry([ credentialsId: "testdocker"]){
                        dockerImage.push('latest')
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
