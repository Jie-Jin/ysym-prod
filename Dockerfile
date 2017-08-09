FROM node:7.4.0

RUN git clone https://github.com/akveo/ng2-admin.git /app/ysym \
    && npm install -g http-server

EXPOSE 5050

WORKDIR "/app/ysym"
ENTRYPOINT ["http-server", "dist", "-a", "0.0.0.0", "-p", "5050"]
