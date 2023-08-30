FROM node:12
COPY app / app
WORKDIR / app
RUN npm install
CMD ["node", "/app/app.js"]
