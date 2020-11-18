# Docker Nginx file server

File server based on [Nginx Docker Image](https://hub.docker.com/_/nginx)

## Usage

First, clone or download zip of this repo.

Then run

```
cd docker-nginx-file-server
docker build -t nginx-file-server:latest .
docker run --name nginx-file-server -p 80:80 --rm -v $(pwd):/usr/share/nginx/files:ro nginx-file-server:latest
```

By default, server will run on port 80. You can change it by modifying `-p 80:80` to `-p <port_you_want>:80`.

By default, it will serve files under currnet working directory. You can change it by modifying `$(pwd)` to wherever path you want, and remember to use absolute path.

If you encounter 403 error, please check that anybody can access the directory that you are serving. One way to verify that is to run the command `sudo -u nobody ls <path_to_serve>`.