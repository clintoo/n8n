# Use the official prebuilt n8n image (no build required)
FROM n8nio/n8n:latest

# Environment variables (injected by Render)
ENV N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_URL=${DB_POSTGRESDB_CONNECTION_URL}
ENV WEBHOOK_URL=${WEBHOOK_URL}
ENV PORT=5678

# Expose the port Render will bind to
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
