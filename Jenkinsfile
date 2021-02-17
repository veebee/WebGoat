pipeline {

   agent any
   
   stages {

      stage("setup") {
        steps {
           sh '''
              export WORKSPACE_J=$(echo $WORKSPACE | sed 's_/_\\/_g')
              sed -i.bak 's/\\%WORKDIR_PLACEHOLDER\\%/$WORKSPACE_J/' ./jenkins-ci/Dockerfile
              cd ./jenkins-ci/ && docker build -t detect-secrets .
           ''' 
         }
      }

      stage("secrets-scanning") {
        
         steps {
            sh '''
               mkdir -p ./reports/detect-secrets"
               docker run --rm -v $PWD:/data detect-secrets
            '''
         }
      }

      stage("next stage") {
 
         steps {
            echo 'next stage'
         }
      }
   }
}
