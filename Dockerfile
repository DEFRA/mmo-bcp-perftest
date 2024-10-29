FROM defradigital/cdp-perf-test-docker:latest

WORKDIR /opt/perftest

COPY scenarios/ ./scenarios/
COPY entrypoint.sh .
COPY user.properties /opt/apache-jmeter-5.5/bin/user.properties
COPY jmeter.properties /opt/apache-jmeter-5.5/bin/jmeter.properties

ENV S3_ENDPOINT https://s3.eu-west-2.amazonaws.com
ENV TEST_SCENARIO BCP-v3

ENTRYPOINT [ "./entrypoint.sh" ]

