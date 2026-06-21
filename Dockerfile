FROM node:24-alpine
WORKDIR /api_pastelaria
COPY package*.json ./
LABEL description="API-PASTELARIA-PDV"
EXPOSE 5000
RUN npm install
COPY . .
CMD ["npm", "start"]
