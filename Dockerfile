# ---- Shih Tzu Care Kochi : static site ----
# Lightweight nginx image serving the built static files.
FROM nginx:1.27-alpine

# Remove the default nginx site config and add ours
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the website into nginx's web root
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/  /usr/share/nginx/html/js/

# nginx listens on 80 inside the container
EXPOSE 80

# Basic healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD wget -q --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
