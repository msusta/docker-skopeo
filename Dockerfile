FROM alpine:3

RUN addgroup -g 1000 skopeo && adduser -G skopeo -u 1000 -D skopeo
RUN apk add -U --no-progress skopeo

USER skopeo:skopeo

ENTRYPOINT [ "skopeo" ]
