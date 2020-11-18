FROM nginx:latest
RUN echo "server { \n\
  listen 80; \n\
  server_name localhost; \n\
  root /usr/share/nginx/files; \n\
  location / { \n\
    autoindex on; # 索引 \n\
    autoindex_exact_size on; # 显示文件大小 \n\
    autoindex_localtime on; # 显示文件时间 \n\
  } \n\
}" > /etc/nginx/conf.d/default.conf
