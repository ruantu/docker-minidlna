FROM alpine:edge

ADD file /file/

RUN set -x \
  && apk add --no-cache \
      minidlna \
  && mkdir -p \
      ${HOME}/media \
  && cat /file/minidlna.conf > /etc/minidlna.conf \
  && cat /file/entrypoint.sh > /entrypoint.sh \
  && chmod +x /entrypoint.sh \
  && rm -rf /file \
  && echo done

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "minidlnad", "-S" ]
