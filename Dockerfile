FROM openjdk:8

COPY require /root

RUN sh /root/build.sh && rm -f /root/build.sh

WORKDIR /root/CICFlowMeter-4.0/bin

EXPOSE 2101
ENTRYPOINT [ "./CICFlowMeter" ]