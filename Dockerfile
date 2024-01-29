FROM node:18
ENV "HTTP_PROXY"="http://external-http-proxy:8080" "http_proxy"="http://external-http-proxy:8080" "HTTPS_PROXY"="http://external-http-proxy:8080" "https_proxy"="http://external-http-proxy:8080"
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json","./"]
RUN npm install --omit=dev --verbose
COPY . .
CMD ["node", "index.js"]
