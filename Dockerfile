FROM haproxy:3.0-alpine

ENV PORT=8080
ENV BACKEND_HOST=backend.railway.internal
ENV BACKEND_PORT=8080
ENV HEALTH_PATH=/health

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 8080

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]
