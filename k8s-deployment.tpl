apiVersion: v1
kind: Service
metadata:
  name: {APP_NAME}-svc
  namespace: uat
spec:
  selector:
    app: {APP_NAME}
    release: canary
  ports:
  - name: http
    port: 8080
    targetPort: 8080

---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {APP_NAME}-deploy
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
  name: ingress-jar
  namespace: uat
  annotations: 
    kubernets.io/ingress.class: "traefix"
spec:
  rules:
  - host: fuck.k8s.local
    http:
      paths:
      - path: 
        backend:
          serviceName: {APP_NAME}-svc
          servicePort: 8080
