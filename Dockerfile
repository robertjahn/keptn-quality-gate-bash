FROM alpine:3.10.3

RUN apk --no-cache add \
    bash \
    jq

RUN apk add curl

COPY qualitygate.sh /

ARG KEPTN_URL

ENTRYPOINT ["/qualitygate.sh"]