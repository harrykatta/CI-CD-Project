@Library('Jenkins-Shared-Lib') _

pipeline {

    agent any

    parameters
    {
        choice(name: 'action', choices: 'create\ndelete', description: 'choose create/Destroy')       
        string(name: 'ImageName', description: "name of the docker build", defaultValue: 'javaapp')
        string(name: 'ImageTag', description: "tag of the docker build", defaultValue: 'v1')
        string(name: 'DockerHubUser', description: "name of the Application", defaultValue: 'ganasai88')
        
    }
 
   
    stages{
         
        stage('Git Checkout'){
                when{expression{params.action == "create"}}    
            steps{
            gitCheckout(
                branch: "main",
                url: "https://github.com/muzafferjoya/CI-CD-Project.git"
            )
            }
        }
         /* 
       stage('Unit Test maven'){
               when{expression{params.action == "create"}}      
            steps{
               script{
                   
                   mvnTest()
               }
            }
        }
       
        stage('Integration Test maven'){
              when{expression{params.action == "create"}}       
            steps{
               script{
                   
                   mvnIntegrationTest()
               }
            }
        }
        
        
         stage('Static Code Analysis: Sonarqube'){
               when{expression{params.action == "create"}}      
            steps{
               script{
                   def SonarQubecredentialsId = 'SonarQubeapi'
                   staticCodeAnalysis(SonarQubecredentialsId)
               }
            }
        }
       
       stage('Quality Gate status check: Sonarqube'){
               when{expression{params.action == "create"}}      
            steps{
               script{
                   def SonarQubecredentialsId = 'SonarQubeapi'
                   staticCodeAnalysis(SonarQubecredentialsId)
               }
            }
        }
        
        stage('Maven build: maven'){
              when{expression{params.action == "create"}}       
            steps{
               script{
                   
                    mvnBuild()
               }
            }
        }
         */
         
        stage('Docker Image Build'){
              when{expression{params.action == "create"}}       
            steps{
               script{
                   
                    dockerBuild("${params.ImageName}","${params.ImageTag}","${params.DockerHubUser}")
               }
            }
        }
        /* 
        stage('Docker Image scan'){
              when{expression{params.action == "create"}}       
            steps{
               script{
                   
                    dockerImageScan("${params.ImageName}","${params.ImageTag}","${params.DockerHubUser}")
               }
            }
        }
        stage('Docker Image Push'){
              when{expression{params.action == "create"}}       
            steps{
               script{
                   
                    dockerImagePush("${params.ImageName}","${params.ImageTag}","${params.DockerHubUser}")
               }
            }
        }
        stage('Docker Image clean'){
              when{expression{params.action == "create"}}       
            steps{
               script{
                   
                    dockerImageClean("${params.ImageName}","${params.ImageTag}","${params.DockerHubUser}")
               }
            }
        }
        */       
 
    }
}
