# Используем образ Node.js
FROM node:14-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json ./
RUN npm install

# Копируем остальные файлы
COPY . .

# Открываем порт 5000
EXPOSE 5000

# Команда запуска приложения
CMD ["node", "index.js"]
