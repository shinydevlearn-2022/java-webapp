pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/shinydevlearn-2022/java-webapp.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to Apache') {
            steps {
                sh 'cp target/java-webapplication.war /opt/apache-tomcat-9.0.99/webapps'
            }
        }
    }
}
