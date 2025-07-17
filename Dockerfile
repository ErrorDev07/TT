FROM ghcr.io/puppeteer/puppeteer:19.7.0

WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application
COPY . .

# Start the bot
CMD [ "node", "bot.js" ]
