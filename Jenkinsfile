#! groovy

node('master') {
    stage('Test unitaires'){
	sh './vendor/bin/phpunit'
    }
    stage('Test Behat'){
	sh './vendor/bin/behat'
    }
}

