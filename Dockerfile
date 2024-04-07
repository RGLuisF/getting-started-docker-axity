FROM node:18-alpine
WORKDIR /app
COPY /app/src .
COPY /app/spec .
COPY /app/package.json .
COPY /app/package-lock.json .
COPY /app/node_modules .
RUN npm install
EXPOSE 3000
CMD ["node","index.js"]