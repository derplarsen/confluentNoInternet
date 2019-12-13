#!/bin/bash
BASE_URL='https://packages.confluent.io/rpm/5.3'
CONFLUENT_VERSION='5.3.1-1'
KAFKA_VERSION='2.12'

mkdir packages
wget $BASE_URL/confluent-common-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-control-center-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-control-center-fe-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-hub-client-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-connect-elasticsearch-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-connect-jdbc-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-connect-jms-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-connect-replicator-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-connect-s3-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-connect-storage-common-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-mqtt-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-kafka-rest-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-ksql-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-metadata-service-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-platform-$KAFKA_VERSION-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-rebalancer-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-rest-utils-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-schema-registry-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-security-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
wget $BASE_URL/confluent-server-$CONFLUENT_VERSION.noarch.rpm --directory-prefix=./packages
