pipeline {

   agent any
   environment {
      PATH = '/usr/local/bin:$PATH'
   }
   
   stages {

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
