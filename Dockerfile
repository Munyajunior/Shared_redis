FROM redis:7.4-alpine

# Create directories
RUN mkdir -p /usr/local/etc/redis /data

# Copy redis config
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis port
EXPOSE 6379

# Start Redis (AUTH injected via command, not config)
CMD ["sh", "-c", "redis-server /usr/local/etc/redis/redis.conf --requirepass \"$REDIS_PASSWORD\""]
