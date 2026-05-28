FROM nginx:alpine

# Copy built assets to the proper directory
COPY . /usr/share/nginx/html/

# Replace default nginx config (optional, provides better SPA support)
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]