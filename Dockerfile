# Node.js tabanlı bir Docker imajı kullanın
FROM node:latest

WORKDIR /app

# package.json ve package-lock.json dosyalarını kopyala ve npm bağımlılıklarını yükle
COPY package*.json ./
RUN npm install

# Geri kalan dosyaları kopyala
COPY . .

EXPOSE 4000 
# Konteyner başlatıldığında çalıştırılacak komut
CMD ["node", "server.js"]
