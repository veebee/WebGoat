pipeline {

   agent any
   
   stages {

      stage("secrets-scanning") {
        
         withEnv(['PATH=/usr/local/bin:$PATH'])

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
