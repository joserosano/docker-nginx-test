# Usar la imagen oficial de Nginx como base
FROM nginx:alpine

# Etiqueta del mantenedor (opcional, pero buena práctica)
LABEL maintainer="Jose Rosano"

# Copiar nuestro archivo index.html personalizado al directorio por defecto de Nginx
# donde sirve el contenido estático.
COPY ./index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80 (Nginx escucha en este puerto por defecto)
EXPOSE 80

# El CMD por defecto de la imagen base 'nginx:alpine' ya se encarga de iniciar Nginx.
# No necesitamos sobreescribirlo para este caso simple.
# CMD ["nginx", "-g", "daemon off;"]
