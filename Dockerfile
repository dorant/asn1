# -----------
# Build image
# -----------
FROM alpine:3.6 as build

COPY asn1c /asn1c

RUN apk add --no-cache build-base automake autoconf libtool

RUN cd /asn1c && \
    test -f configure || autoreconf -iv && \
    ./configure && \
    make install

# ------------
# Result image
# ------------
FROM alpine:3.6

COPY --from=build /usr/local/bin/asn1c /usr/local/bin/

# Copy standard types and en-/decoders
COPY --from=build /usr/local/share/asn1c /usr/local/share/asn1c/



WORKDIR /spec

CMD ["/usr/local/bin/asn1c", "-no-gen-example","test.asn"]
