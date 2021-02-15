pipeline {

   agent any
   
   stages {

      stage("secrets-scanning") {

         steps {
            echo 'About to run truffleHog...'
            sh 'truffleHog .'
         }
      }
      
      stage("next stage") {
 
         steps {
            echo 'next stage'
         }
      }
   }
}
