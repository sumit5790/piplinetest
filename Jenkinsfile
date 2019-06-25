pipeline {
      agent any  
    
 stages {
 
        stage('build'){
		    steps{
			   script {
			    docker_image=docker.build(jdk_images ,'-f ./dockerfile .')
				}
			}
		}
		
		stage('test'){
		       parallel {
			     stage('maven'){
				     agent{
					    docker {
                                  image 'maven:slim'
                                 args '-v /root/.m2:/root/.m2'
                                    }
					    steps{
						  echo 'Running the integration test'
					} 
					 }
				 
				 }
				 
				 stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            
        }
        stage('Deliver') {
            steps {
                sh 'export JAVA=/opt/java && export PATH=${JAVA}/bin:${PATH}'
                sh 'java -jar target/*.jar'
            }
        }
			   
			   
			   
			   }
		
		
		}
 
 
 }

	
 }
