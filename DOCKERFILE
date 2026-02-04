# =============================
# Dockerfile
# =============================

FROM redis:7-alpine

LABEL maintainer="KHALID <ivojunior671@gmail.com>"

# Copy custom Redis configuration
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis default port
EXPOSE 6379

# Start Redis with the configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
