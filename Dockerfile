# Serve os arquivos estáticos com nginx (Coolify: Build Pack "Dockerfile", porta 80)
FROM nginx:alpine
COPY *.html /usr/share/nginx/html/
EXPOSE 80
