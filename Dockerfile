FROM node:14-alpine

RUN npm install -g browser-sync

WORKDIR /app
COPY start-browser-sync.sh /app/start-browser-sync.sh
COPY docroot /app/docroot
ENV DOCROOT /app/docroot

EXPOSE 3000
EXPOSE 3001

CMD /app/start-browser-sync.sh
