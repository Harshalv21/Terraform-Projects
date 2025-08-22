FROM node:18

# Create app directory
WORKDIR /app

# Install Medusa CLI
RUN npm install -g @medusajs/medusa-cli

# Initialize a medusa project
RUN medusa new my-medusa-store --seed

WORKDIR /app/my-medusa-store

# Expose port
EXPOSE 9000

# Run Medusa
CMD ["npm", "run", "start"]
