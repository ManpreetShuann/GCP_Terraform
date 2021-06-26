pipeline {
    agent {
      label 'gce-jenkins-instance-1'
    }
    tools {
      terraform 'Terraform-1'
    }
    stages {
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            when{
                expression{
                    BRANCH_NAME == 'master'
                }
            }
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
    post { 
        always { 
            cleanWs()
        }
    }
}