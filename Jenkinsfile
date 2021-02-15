pipeline {

   agent any
   
   stages {

      stage("secrets-scanning") {

         steps {
            echo 'pulling latest truffle hog image'
            sh 'docker pull gesellix/trufflehog'
            echo 'pull complete, will scan repo for secrets now'
         } 
      }
   }
}
