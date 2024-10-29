FROM defradigital/cdp-perf-test-docker:latest

WORKDIR /opt/perftest

COPY scenarios/ ./scenarios/
COPY user.properties /opt/apache-jmeter-5.5/bin/user.properties

COPY entrypoint.sh .

ENV S3_ENDPOINT https://s3.eu-west-2.amazonaws.com
ENV TEST_SCENARIO BCP-v2

ENTRYPOINT [ "./entrypoint.sh" ]

