FROM ghost

COPY config.production.json /var/lib/ghost/config.production.json

#install the google cloud storage adapter
WORKDIR /var/lib/ghost
COPY ../credentials.json /var/lib/ghost/credentials.json
RUN npm install ghost-gcs --no-save 
WORKDIR /var/lib/ghost/content/adapters/storage/ghost-gcs/
ADD https://raw.githubusercontent.com/thomas-vl/ghost-gcs/master/export.js index.js

WORKDIR /var/lib/ghost