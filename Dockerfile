# Gunakan image resmi Nginx sebagai base image
FROM nginx:latest

# Hapus konfigurasi default Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Salin file konfigurasi Nginx Anda ke container
COPY nginx.conf /etc/nginx/nginx.conf

# Salin konten situs web (misalnya file HTML, CSS, JS) ke direktori yang sesuai
COPY ./html /usr/share/nginx/html

# Expose port 80 untuk akses HTTP
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
