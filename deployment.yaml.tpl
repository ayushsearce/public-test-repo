--- 
apiVersion: apps/v1
kind: Deployment
metadata: 
  labels: 
    app: jenkins-test
  name: jenkins-test
spec: 
  replicas: 1
  selector: 
    matchLabels: 
      app: jenkins-test
  strategy: 
    rollingUpdate: 
      maxSurge: 1
      maxUnavailable: 1
    type: RollingUpdate
  template: 
    metadata: 
      labels: 
        app: jenkins-test
    spec: 
      containers: 
        - 
          image: "gcr.io/GOOGLE_CLOUD_PROJECT/staging/jenkins-gcp-test:BUILD_NUMBER"
          name: jenkins-test
          ports: 
            - 
              containerPort: 8080
              name: jenkins-test
