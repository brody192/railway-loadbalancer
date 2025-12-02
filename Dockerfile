FROM haproxy:3.0-alpine

# Defaults – you can override these in Railway env vars
ENV VAD_SERVICE_HOST=vad-service-2.railway.internal
ENV VAD_SERVICE_PORT=8000
ENV PORT=8080

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 8080

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]