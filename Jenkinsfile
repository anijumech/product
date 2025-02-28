pipeline {
    agent any

    environment {
        // Define your repository details
        GIT_REPO = 'https://github.com/anijumech/product.git'
        GIT_CREDENTIALS_ID = 'anbanerj'  // Use Jenkins credentials
        RELEASE_BRANCH = 'release-' + "${BUILD_NUMBER}" // Release branch naming convention
        BRANCH_NAME = 'main' 
    }

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    // Checkout code from Git repository
                    git credentialsId: "${GIT_CREDENTIALS_ID}", url: "${GIT_REPO}", branch: "${BRANCH_NAME}" 
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // Run your test commands (adjust as necessary)
                    // sh '''#!/bin/bash
                    echo "Running tests..."
                    // # Add your test command, for example:
                    // npm install && npm test
                    // '''
                }
            }
        }

        stage('Create Release Branch') {
            steps {
                script {
                    // Checkout to a new release branch
                    sh '''#!/bin/bash
                    git checkout -b ${RELEASE_BRANCH}
                    git push origin ${RELEASE_BRANCH}
                    '''
                }
            }
        }

        stage('Push Changes to Release Branch') {
            steps {
                script {
                    // Push changes to the release branch
                    sh '''#!/bin/bash
                    git add .
                    git commit -m "Creating release branch ${RELEASE_BRANCH}"
                    git push origin ${RELEASE_BRANCH}
                    '''
                }
            }
        }
    }

    post {
        always {
            // Clean up or notify on completion
            echo 'Pipeline run completed'
        }

        success {
            echo 'Pipeline was successful'
        }

        failure {
            echo 'Pipeline failed'
        }
    }
}
