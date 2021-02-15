pipeline {
	agent any

	stages {

		stage(‘secrets-scanning’) {
			steps {
				echo ‘pulling latest truffle hog image’
				sh ‘docker pull gesellix/trufflehog’
				echo ‘pull complete, will scan repository for secrets now’
				sh ‘docker run -t gesellix/trufflehog’
			}
		}
	}
}
