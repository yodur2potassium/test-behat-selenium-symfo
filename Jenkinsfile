#! groovy

node('master') {
    stage('Récupération de composer'){
	sh 'curl -s https://getcomposer.org/composer.phar -o composer.phar'
    }
    stage('Installation des dépendances'){
	sh 'php composer.phar install'
    }
    stage('Test unitaires'){
	sh './vendor/bin/phpunit'
    }
    stage('Test Behat'){
	sh './vendor/bin/behat'
    }
}

