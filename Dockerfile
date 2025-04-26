# Usa una imagen oficial de Node.js
FROM node:20

# Define el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia todo el código
COPY . .

# Expone el puerto que usa tu app (por ejemplo 3000)
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
