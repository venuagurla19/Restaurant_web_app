FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY application.css .
COPY application.html .
COPY index.html .
COPY restaurant.css .
COPY /images ./images/
COPY /icons ./icons

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
