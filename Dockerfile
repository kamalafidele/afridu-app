FROM node:22.2.0-alpine


RUN mkdir -p /home/afridu
WORKDIR /home/afridu

# Copy package files and scripts directory first for better caching
COPY package*.json ./
COPY scripts ./scripts/

# Install dependencies using npm instead of yarn to avoid corrupted yarn binary
RUN npm install --legacy-peer-deps

# Copy the rest of the application (excluding node_modules)
COPY . .
RUN rm -rf node_modules/.cache

# Build the application

# Build without any linting
ENV NEXT_IGNORE_TYPESCRIPT_ERRORS=true
ENV NEXT_IGNORE_ESLINT_ERRORS=true
ENV DISABLE_ESLINT_PLUGIN=true
ENV TSC_COMPILE_ON_ERROR=true

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]