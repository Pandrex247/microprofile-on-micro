openssl genrsa -out baseKey.pem
openssl pkcs8 -topk8 -inform PEM -in baseKey.pem -out privateKey.pem -nocrypt
openssl rsa -in baseKey.pem -pubout -outform PEM -out publicKey.pem
cp ./privateKey.pem ./src/main/resources
cp ./publicKey.pem ./src/main/resources
