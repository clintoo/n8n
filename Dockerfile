# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Expose the port Render expects
EXPOSE 5678

# Don’t hardcode ENV vars here — Render will inject them automatically at runtime.
# Just set defaults for local dev (optional):
ENV N8N_PORT=5678

# Start n8n
CMD ["n8n", "start"]
