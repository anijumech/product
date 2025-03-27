FROM node
RUN mkdir -p /app
COPY ./app.js /app
COPY ./package.json /app
WORKDIR /app
RUN npm install
CMD ["app.js"]
ENTRYPOINT ["node"]
