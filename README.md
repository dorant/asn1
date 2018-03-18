## asn.1 tool container

## Build compiler in a container

docker build -t "asn1c:1" .

## Generate S1AP using compiler

docker run -v /host-dir/spec:/spec asn1c:1

## Build converter example

docker run -v /host-dir/spec:/spec asn1c:1 make -f converter-example.m

## Run it
docker run -v /Users/bjorn/git/asn1/spec:/spec asn1c:1 ./converter-example

## Debug/shell
docker run -it --rm asn1c:1 /bin/sh



S1AP examples taken from:
https://github.com/vlm/asn1c/issues/185
https://github.com/vlm/asn1c/files/1761214/s1ap-14.4.0.asn1.tar.gz
