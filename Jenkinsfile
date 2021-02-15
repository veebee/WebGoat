pipeline {

   agent any
   environment {
      PATH+EXTRA=/usr/local/bin
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
