FROM node:20.12.2

WORKDIR /app

COPY app/package*.json ./
COPY app/Makefile ./

RUN npm install

COPY app/ ./

EXPOSE 8080

CMD ["make", "test"]
