FROM alpine:3.19
RUN apk add --no-cache python3 py3-pip
WORKDIR /app
COPY . /app
RUN addgroup -S securitygroup && adduser -S appuser -G securitygroup
USER appuser
EXPOSE 8080
CMD ["python3", "-m", "http.server", "8080"]
