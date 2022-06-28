pipeline {
	agent any
	options{
		timestamps()
	}
	triggers{
		pollSCM ('* * * * *')
	}
	stages{
		stage('build'){
			steps{
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Archit1408/Test1411.git']]])
			}
		}
		stage('running'){
			steps{
				sh '''chmod +x ./test.sh
                      		./test.sh >> inputfile'''
			}
		}
		stage('Archiving'){
			when{
				expression {
					env.BRANCH_NAME == 'main'
				}
			}
			steps{
				input("Want to archive?")
				script{
					sh "echo archiving"
				}
				 
				archiveArtifacts artifacts: 'inputfile', followSymlinks: false
			}
		}
			
	}
	post{
		success{
			sh "rm inputfile"
		}
	}
}
