pipeline {
    agent {
        docker {
            image 'maven:slim'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
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
      //  stage('Deliver') {
      //      steps {
       //         sh 'export JAVA=/opt/java && export PATH=${JAVA}/bin:${PATH}'
        //        sh 'java -jar target/*.jar'
         //   }
        //}
    }
	
	stage('four'){
				               parallel{
							         stage('unit test'){
									              steps{
												      echo 'running the unit test'
												  }
									 }
									 stage('Integration test'){
									        agent { dockerfile true }
											
											}
											stage{
											steps{
											   sh 'docker images'
									
									}
									}
									 } 
									 
							   }
}
