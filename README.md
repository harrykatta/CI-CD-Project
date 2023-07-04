Pre-requisites:
--------
    - Install Git
    - Install Maven
    - Install Docker
    
Clone code from github:
-------
    git clone https://github.com/muzafferjoya/CI-CD-Project.git
    cd CI-CD-Project
    
Build Maven Artifact:
-------
    mvn clean install
 
Build Docker image for Springboot Application
--------------
    docker build -t dockerhubuserid/imagename
  
Docker login
-------------
    docker login
    
Push docker image to dockerhub
-----------
    docker push dockerhubuserid/imagename

