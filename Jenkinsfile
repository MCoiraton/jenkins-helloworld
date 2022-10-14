pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                dockerImage = docker.build("mcoiraton/helloworldtest:latest")
            }
        }
        stage('push') {
            steps {
                echo 'Pushing..'
                withDockerRegistry([ credentialsId: "testdocker"]){
                    dockerImage.push()
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
