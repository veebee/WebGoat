pipeline {

   agent any
   
   stages {

      stage("setup") {
        steps {
           sh '''
              export WORKSPACE_J = $(echo $WORKSPACE | sed 's_/_\\/_g')
              sed -i.bak "s/\%WORKDIR_PLACEHOLDER\%/$WORKSPACE_J/" jenkins-ci/Dockerfile
           ''' 
         }
      }

      stage("secrets-scanning") {
        
         steps {
            sh "mkdir -p ./reports/detect-secrets"
            sh "detect-secrets scan . > ./reports/detect-secrets/report.json"
         }
      }

      stage("next stage") {
 
         steps {
            echo 'next stage'
         }
      }
   }
}
