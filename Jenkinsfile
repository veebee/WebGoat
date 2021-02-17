pipeline {

   agent any
   
   stages {

      stage("setup") {
        steps {
           sh '''
              cd ./jenkins-ci/ && docker build -t detect-secrets .
              whoami
           ''' 
         }
      }

      stage("secrets-scanning") {
        
         steps {
            sh '''
               mkdir -p ./reports/detect-secrets
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
