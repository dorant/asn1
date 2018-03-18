## asn.1 tool container

## Build

docker build -t "asn1c:1" .

## Run

docker run -v /host/directory:/spec asn1c:1

or interactive:

docker run -it --rm asn1c:1 /bin/sh



https://github.com/vlm/asn1c/issues/185

https://github.com/vlm/asn1c/files/1761214/s1ap-14.4.0.asn1.tar.gz
