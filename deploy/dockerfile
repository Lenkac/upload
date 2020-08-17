FROM tomcat

MAINTAINER lian 864755547@qq.com

COPY /dist/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 9527

CMD /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out
