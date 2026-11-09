FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY task_2.html /usr/share/nginx/html/task_2.html
COPY style.css /usr/share/nginx/html/style.css

EXPOSE 80
