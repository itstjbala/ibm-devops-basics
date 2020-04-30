timestamps {
    node('windows') {
        stage('checkout'){
            git credentialsId: '15c42020-ae55-4bed-9a13-e93c4f48d864', url: 'https://github.com/itstjbala/ibm-devops-basics.git'
        }
        stage('Hello') {
            bat label: '', script: 'echo "[INFO] This is running on "'
        }
    }
        
    node('master') {    
        stage('calling shell'){
                sh label: '', script: '''#!/bin/bash
                    echo "[INFO] Directly excuting it from Jenkins"
                    echo "[INFO] Directly excuting it from Jenkins" > jenkins.txt
                    echo ${param1} >> jenkins.txt
                    echo ${WORKSPACE} >> jenkins.txt
                    echo ${choice} >> jenkins.txt
                    echo ${GIT_BRANCH}'''            
        }
        
        stage('echo') {
                echo 'This is Second Stage!'
        }
    }
}
















