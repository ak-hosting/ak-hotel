# AK Hotel - Docker Container
# Basit HTTP sunucusu için Docker yapılandırması

FROM nginx:alpine

# Web dosyalarını kopyala
COPY . /usr/share/nginx/html/

# Port 80'i aç
EXPOSE 80

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"] 