# Используем образ Node.js
FROM node:14-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json ./
RUN npm install

# Копируем остальные файлы
COPY . .

# Собираем проект
RUN npm run build

# Открываем порт 3000
EXPOSE 3000

# Команда запуска приложения
CMD ["npm", "start"]
