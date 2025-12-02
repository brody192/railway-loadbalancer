FROM haproxy:3.0-alpine

ARG PORT=8080
ARG BACKEND_HOST=backend.railway.internal
ARG BACKEND_PORT=8080
ARG HEALTH_PATH=/health

ENV PORT=${PORT}
ENV BACKEND_HOST=${BACKEND_HOST}
ENV BACKEND_PORT=${BACKEND_PORT}
ENV HEALTH_PATH=${HEALTH_PATH}

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]
