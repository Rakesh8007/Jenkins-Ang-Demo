node(){
    stage('Cloning Git') {
        checkout scm
    }
        
    stage('Install dependencies') {
        nodejs('NodeJs') {
            sh 'npm install'
            echo "Modules installed"
        }
        
    }
    stage('Build') {
        nodejs('NodeJs') {
            sh 'npm run build'
            echo "Build completed"
        }
        
    }

    stage('Package Build') {
        sh "tar -zcvf bundle.tar.gz dist/automationdemo/"
    }

    stage('Artifacts Creation') {
        fingerprint 'bundle.tar.gz'
        archiveArtifacts 'bundle.tar.gz'
        echo "Artifacts created"
    }

    stage('Stash changes') {
        stash allowEmpty: true, includes: 'bundle.tar.gz', name: 'buildArtifacts'
    }

    stage('deploy'){
      nodejs('NodeJs') {
        sh 'chmod 777 ./script/deploy.sh'
        sh './script/deploy.sh'
    }
      stage("sonarqube analysis"){
            steps{
                nodejs(nodeJSInstallationName: 'NodeJs'){
                    sh "npm install"
                    withSonarQubeEnv('SonarQube'){
                    sh 'npm install sonar-scanner'
                    sh "npm run sonar"
                    }
                    
                }
            }
        }
}
 }

// node('Nodejs') {
//     echo 'Unstash'
//      unstash 'buildArtifacts'
//     echo 'Artifacts copied'

//     echo 'Copy'
//     sh "yes | sudo cp -R bundle.tar.gz /var/www/html && cd /var/www/html && sudo tar -xvf bundle.tar.gz"
//     echo 'Copy completed'
//  }
// }
