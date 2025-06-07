pipeline {
    agent any

    triggers {
        cron('36 9 * * *') // Runs daily at 3:06 PM IST (UTC+5:30)
    }

    environment {
        action = 'apply'
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
