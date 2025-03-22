FROM node:23

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build the project - use npx to run TypeScript
RUN npx tsc

# Command to run the app
CMD ["ts-node", "app.ts"] 