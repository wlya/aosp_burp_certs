rm -rf ./output
mkdir output
cd output

openssl genrsa -out ca.key 2048
openssl req -new -key ca.key -subj "/C=CN/ST=Vilian/L=Vilian/O=Young Vilian/OU=IT Vilian/CN=Vilian.com" -out ca.csr
echo "subjectAltName=DNS:test.com,IP:10.10.2.137" > cert_extensions
openssl x509 -req -days 365 -in ca.csr -signkey ca.key -extfile cert_extensions -out ca.crt
openssl pkcs12 -export -inkey ca.key  -in ca.crt -out cert.root.pfx -password pass:root

# openssl pkcs12 -in cert.root.pfx -out cacert.pem
# openssl x509 -inform PEM -subject_hash_old -in cacert.pem
KEY_NUM=`openssl x509 -inform PEM -subject_hash_old -in ca.crt | head -n 1`

cp ca.crt $KEY_NUM.0

echo "push ./output/"$KEY_NUM.0 "/sdcard/"
echo "Then copy it to /system/etc/security/cacerts/, chmod to rw-r--r--, then reboot"

cd ..
