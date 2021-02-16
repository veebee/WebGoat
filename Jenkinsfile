pipeline {

   agent any
   
   stages {

      stage("setup") {
        steps {
           sh '''
              echo "PATH = ${PATH}" 
              echo "M2_HOME = ${M2_HOME}"
              echo WORKSPACE
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
