FROM openjdk:8

RUN mkdir /soapui 
WORKDIR /soapui
RUN wget -c https://s3.amazonaws.com/downloads.eviware/soapuios/5.5.0/SoapUI-5.5.0-linux-bin.tar.gz  -O - | tar -C /soapui -xz

CMD ./start.sh
EXPOSE 8080

COPY ./ProjetoXPTO-soapui-project.xml /soapui/ProjetoXPTO-soapui-project.xml
COPY ./start.sh /soapui/start.sh
RUN ["chmod", "+x", "/soapui/start.sh"]
