# Usa Node.js como base
FROM node:16

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia archivos necesarios
COPY package*.json ./
RUN npm install
COPY . .

# Define un nombre único por contenedor
ENV HOSTNAME=${HOSTNAME:-"default"}

# Puerto y comando de ejecución
EXPOSE 3000
CMD ["node", "app.js"]
