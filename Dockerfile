FROM node:18
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json","./"]
RUN npm install --omit=dev --verbose
COPY . .
CMD ["node", "index.js"]
