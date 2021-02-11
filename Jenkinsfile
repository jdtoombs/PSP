#!groovy

// Important
// Remember to ensure that the Project version information is on top of the pom.xml file because
// the getVersionFromPom will attempt to read the version information that it encounter at the
// first occurance.

def DEV_PROJECTNAME = "3cd915-dev" //"clay016-dev"
def UAT_PROJECTNAME = "3cd915-test"//"clay016-stage"
def BUILDCONFIGNAME="pims"
def IMAGE_NAME="pims:latest"
def UATIMAGENAME = "pims:UATReady-1.0.0"

node('dotnet-50') {

  stage('Clone') {
    // sh "git clone http://gogs-pbb-cicd.apps.ocp.demo.com/poc/sampledotnet.git"
    checkout scm
    // checkout($class: 'TeamFoundationServerScm', localPath: 'D:\Build-Code-Scm', projectPath: '$/RootDirectory/SubFolder', serverUrl: '[http://TEST.TEST.com:8080/TEST/TEST)
    // checkout([$class: 'TeamFoundationServerScm', credentialsConfigurer: [$class: 'AutomaticCredentialsConfigurer'], projectPath: '$/ProjectName', serverUrl: 'CollectionURL', useOverwrite: true, useUpdate: true, workspaceName: 'Hudson-${JOB_NAME}'])}}
  }

 stage('Restore') {    
    dir('PimsHelloWorld') { // -- if using git clone, the codes are cloned into <project_folder>/app
        sh "dotnet restore PimsHelloWorld.csproj --force --verbosity d"
        //sh "dotnet restore ../sampledotnet/Test.csproj --configfile ../sampledotnet/nuget.config --force --verbosity d"
    }
  }

 stage('Publish') {
   
    dir('PimsHelloWorld') { // -- if using git clone, the codes are cloned into <project_folder>/app
        //sh "dotnet publish ../sampledotnet/Test.csproj --no-restore  -c Release /p:MicrosoftNETPlatformLibrary=Microsoft.NETCore.App"
       sh "dotnet publish PimsHelloWorld.csproj --no-restore  -c Release /p:MicrosoftNETPlatformLibrary=Microsoft.NETCore.App"
    }
  }

  stage('Build Image') {
    dir('PimsHelloWorld'){
    sh "oc -n $DEV_PROJECTNAME start-build $BUILDCONFIGNAME --from-dir=./bin/Release/netcoreapp5.0/rhel.7-x64/publish --follow"
    sh "oc -n $DEV_PROJECTNAME tag $DEV_PROJECTNAME/$IMAGE_NAME $UAT_PROJECTNAME/$UATIMAGENAME"
    }
 }
  
  //stage('Testing'){
    
   // dir('app') {
        //  echo 'Initiating SonarQube Test'
        //  sh 'dotnet sonarscanner begin begin /k:"pims" /d:sonar.host.url="https://sonarqube-clay016-code.apps.sandbox.x8i5.p1.openshiftapps.com" /d:sonar.login="3e480d923017a75a734f651abc11885379caace"'
        //  sh "dotnet build"
         // sh 'dotnet sonarscanner end /d:sonar.login="3e480d923017a75a734f651abc11885379caace"'
        //  }
      //  }
     
    //stage('Scan Codebase') {
     // agent { label 'sonar-dotnet' }
     // step {
     //     withSonarQubeEnv('sonarqube') {
       //     echo 'Initiating SonarQube Test'
       //   sh 'dotnet SonarScanner begin begin /k:"pims" /d:sonar.host.url="https://sonarqube-pims-tools.2886795295-80-kota02.environments.katacoda.com" /d:sonar.login="5b0b8d527b4f2e2aacf67e45ef14e141eaf2b88e"'
       //   sh "dotnet build"
      //    sh 'dotnet sonarscanner end /d:sonar.login="5b0b8d527b4f2e2aacf67e45ef14e141eaf2b88e"'
            //echo "${env.SONAR_HOST_URL}"  
       // }
     // }
    //}
}
