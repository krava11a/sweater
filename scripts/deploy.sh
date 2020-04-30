#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    krava@192.168.56.101:/home/krava/

echo 'Restart server ....'

ssh -i ~/.ssh/id_rsa krava@192.168.56.101 <<EOF

pgrep java | xargs pkill -9 -f java
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt 2>&1  </dev/null &

EOF

echo 'bye'