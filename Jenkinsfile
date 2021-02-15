pipeline {

   agent any
   
   stages {

      stage("setup") {
        steps {
           sh '''
              echo "PATH = ${PATH}"
              echo "M2_HOME = ${M2_HOME}"
           ''' 
         }
      }

      stage("secrets-scanning") {
        
         steps {
            echo 'About to run truffleHog...'
            sh "truffleHog ."
         }
      }

      stage("next stage") {
 
         steps {
            echo 'next stage'
         }
      }
   }
}
