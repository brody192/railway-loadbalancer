FROM haproxy:3.0-alpine

ENV PORT=8080
ENV BACKEND_URL=vad-service-2.railway.internal:8080

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 8080

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]