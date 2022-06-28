pipeline {
	agent any
	stages{
		stage('build'){
			steps{
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Archit1408/Test1411.git']]])
			}
		}
		stage('running'){
			steps{
				sh '''chmod +x ./test.sh
                      		./test.sh > file'''
			}
		}
		stage('Archiving'){
			steps{
				archiveArtifacts artifacts: 'file', followSymlinks: false
			}
		}
			
	}
}
