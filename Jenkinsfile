pipeline {

   agent any
   
   stages {

      stage("setup") {
        steps {
           sh '''
              echo "PATH = ${PATH}"whih 
              echo "M2_HOME = ${M2_HOME}"
           ''' 
         }
      }

      stage("secrets-scanning") {
        
         steps {
            echo 'Currently in'
            sh "pwd"
            echo 'About to run truffleHog...'
            sh "mkdir -p ./reports/truffleHog"
            sh "truffleHog --json ./ > ./reports/truffleHog/results.json"
         }
      }

      stage("next stage") {
 
         steps {
            echo 'next stage'
         }
      }
   }
}
