# Utilise une image de base Node.js
FROM node:18-alpine

# Créer un répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le projet
COPY . .

# Compiler le projet pour la production
RUN npm run build

# Exposer le port 8080 pour le serveur web
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["npm", "run", "serve"]
