docker run -it --rm --name connect-demo -p 8083:8083 -e GROUP_ID=1 \
    -e BOOTSTRAP_SERVERS="cell-1.streaming.ap-mumbai-1.oci.oraclecloud.com:9092" \
    -e CONFIG_STORAGE_TOPIC=$CONFIG_ID-config \
    -e OFFSET_STORAGE_TOPIC=$CONFIG_ID-offset \
    -e STATUS_STORAGE_TOPIC=$CONFIG_ID-status \
    -v $(pwd -L)/connect-distributed.properties:/kafka/config.orig/connect-distributed.properties \
    -v $(pwd -L)/confluentinc-kafka-connect-s3-5.5.0/:/kafka/connect/confluentinc-kafka-connect-s3-5.5.0 \
    -v $(pwd -L)/aws_credentials:/kafka/.aws/credentials \
    debezium/connect:latest