pipeline {
    agent any

    triggers {
        cron('H 2 * * *')
    }

    environment {
        action = 'apply' // or 'destroy' – set as appropriate
    }

    stages {
        stage('Cloning') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/Raahulwani/Automation-project.git']]
                )
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Action') {
            steps {
                echo "Terraform action is --> ${env.action}"
                sh "terraform ${env.action} --auto-approve"
            }
        }

        stage('Build') {
            steps {
                echo 'Building...'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
