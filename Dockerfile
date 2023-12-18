# Node.js tabanlı bir Docker imajı kullanın
FROM node:latest

# Uygulama dizinini oluşturun
WORKDIR /app
# Define the env variable `PORT`
ENV PORT 4000

# Expose the port 3000
EXPOSE ${PORT}

# package.json ve package-lock.json dosyalarını kopyalayın
COPY package*.json ./

# Bağımlılıkları yükleyin
RUN npm install

# Uygulama kodunu kopyalayın
COPY . /app

# Uygulamayı çalıştırın
CMD ["node", "server.js"]
