apiVersion: apps/v1
kind: Deployment
metadata:
  name: {APP_NAME}-deployment
  labels:
    app: {APP_NAME}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: {APP_NAME}
  template:
    metadata:
      labels:
        app: {APP_NAME}
    spec:
      containers:
      - name: {APP_NAME}
        image: {IMAGE_URL}:{IMAGE_TAG}
        ports:
        - containerPort: 8080
        env:
          - name: SPRING_PROFILES_ACTIVE
            value: {SPRING_PROFILE}
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: {APP_NAME}
  namespace: uat
  annotations: 
    kubernets.io/ingress.class: "nginx"
spec:
  rules:
  - host: crcstest-core.k8s.local
    http:
      paths:
      - path: 
        backend:
          serviceName: {APP_NAME}-svc
          servicePort: 8080
