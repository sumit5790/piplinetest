pipeline {
         agent none
		  stages {
		    stage {
			  agent {
			      docker { image 'maven:3-alpine' }
                 }
            steps {
			    args '-v $HOME/.m2:/root/.m2' 
                sh 'mvn --version'
				sh 'sh 'mvn -B''
                }
			  
			   }
			 stage {
			     agent { dockerfile true }
				 steps {
                sh 'node --version'
                sh 'svn --version'
            } 
			 
			 }  
			
			
			}
		  
		  
		  } 

