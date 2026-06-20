<<<<<<< HEAD
FROM node:latest

=======
FROM node:24-alpine
>>>>>>> a4f6597 (ref: refatorando image dockerfile de api e docker compose removendo mongo replica)
WORKDIR /api_pastelaria
COPY package*.json ./
LABEL description="API-PASTELARIA-PDV"
EXPOSE 5000
RUN npm install
COPY . .
CMD ["npm", "start"]
<<<<<<< HEAD

EXPOSE 5000
ENV PORT=5000
=======
>>>>>>> a4f6597 (ref: refatorando image dockerfile de api e docker compose removendo mongo replica)
