#! groovy

node('master') {
    stage('Installation des dépendances'){
	sh 'composer install'
    }
    stage('Test unitaires'){
	sh './vendor/bin/phpunit'
    }
    stage('Test Behat'){
	sh './vendor/bin/behat'
    }
}

