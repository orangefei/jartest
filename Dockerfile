FROM anapsix/alpine-java
ADD ./target/main-0.0.1.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
#fromָ��ָ���˵�ǰ����Ļ����񣬱��뵱ǰ����ʱ�Զ����ػ�����
#MAINTAINERָ������
#ADD ����jar�ļ���������ȥ��������Ϊdemo.jar
#EXPOSE��¶8080�˿�
#ENTRYPOINT����ʱִ��java -jar demo.jar



BRUAT--10.190.30.47--rcs-agent
BRUAT--10.190.30.48--rcs-agent-task
BRUAT--10.190.30.49--rcs-backstagemagr
BRUAT--10.190.30.5--rcs-contract
BRUAT--10.190.30.57--rcs-facade
BRUAT--10.190.30.6--rcs-services-core
BRUAT--10.190.30.7--rcs-tasktracker

UATA--10.190.2.3--rcs-tasktracker
UATA--10.190.2.45--rcs-agent
UATA--10.190.2.46--rcs-contract
UATA--10.190.2.47--rcs-services-core
UATA--10.190.2.48--rcs-facade
UATA--10.190.2.49--rcs-backstagemagr
UATA--10.190.2.50--rcs-agent-task
UATA--10.190.2.71--rcs-configmagr
