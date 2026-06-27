FROM node:22 AS build
WORKDIR /api_pastelaria
COPY package*.json ./
RUN npm install --only=production && npm cache clean --force
COPY . .

FROM node:22-slim AS production
WORKDIR /api_pastelaria
COPY --from=build /api_pastelaria/node_modules ./node_modules
COPY ./src ./src
COPY package.json swagger.yaml .env ./
LABEL description="API-PASTELARIA-PDV"
EXPOSE 5000
CMD ["node", "src/server.js"]
