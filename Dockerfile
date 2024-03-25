FROM node:latest

WORKDIR /home/server

RUN npm install -g json-server

COPY db.json /home/server/db.json

COPY alt.json /home/server/alt.json

EXPOSE 3000 

ENTRYPOINT [ "json-server", "--host", "0.0.0.0" ] # Main command to run

CMD [ "db.json" ]

#CMD #Additional commands to run after entry point command