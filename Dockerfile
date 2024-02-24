FROM alpine:edge

RUN set -x \
  && apk add --no-cache \
      minidlna \
  && mkdir -p \
      ${HOME}/media \
  && sed -i 's|^media_dir=.*|media_dir=/root/media|g' /etc/minidlna.conf \
  && echo done

CMD [ "minidlnad", "-S" ]
