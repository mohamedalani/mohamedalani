# Utiliser l'image officielle nginx comme base
FROM nginx:alpine

# Copier les fichiers HTML et CSS dans le répertoire de nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# nginx démarre automatiquement avec l'image de base
CMD ["nginx", "-g", "daemon off;"]
