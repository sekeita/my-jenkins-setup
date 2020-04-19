#!groovy

/*
 * This script configures the Jenkins base URL.
 */

import jenkins.model.JenkinsLocationConfiguration

JenkinsLocationConfiguration location = Jenkins.instance.getExtensionList('jenkins.model.JenkinsLocationConfiguration')[0]
location.url = 'http://192.168.247.129:30001/' // minikube:jenkins-node-port
location.save()
