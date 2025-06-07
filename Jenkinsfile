pipeline {
    agent any


     triggers{
            cron('H 2 * * *')
           }

    stages {
        stage('Cloning') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Raahulwani/Automation-project.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 

       
                 stage('Build'){
                       stage{
                           echo 'Building'
        }
    }
        stage('Test'){
                       stage{
                           echo 'Testing'
        }
    }                 
}
              }

