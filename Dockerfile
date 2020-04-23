FROM ubuntu

RUN apt-get update && apt-get install -y firefox xauth wget

WORKDIR /opt
RUN wget http://download.lunar-linux.org/lunar/mirrors/jre-8u231-linux-x64.tar.gz
RUN tar -C /opt/ -zxf /opt/jre-8u231-linux-x64.tar.gz
RUN touch /root/.Xauthority
ENV PATH=/opt/jre1.8.0_231/bin:$PATH
