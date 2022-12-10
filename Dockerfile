FROM nginx:1.23.2-alpine

RUN apk add --no-cache curl netcat-openbsd grep

# Copy example config
COPY checks.csv /config/
COPY incidents.txt /config/

# Copy tinystatus app
COPY tinystatus /app/tinystatus
RUN chmod +x /app/tinystatus

# Copy entrypoint script
COPY docker_tinystatus.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/docker_tinystatus.sh

# Environment variable for refresh frequency
ENV REFRESH_INTERVAL=30

