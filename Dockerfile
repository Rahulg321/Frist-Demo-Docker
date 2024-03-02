# which base version we want to run
FROM node

# the working directory we want to run our container in
WORKDIR /app

# from which local directory to which container/image directory
COPY . /app

RUN npm install

# docker containers are isolated
# which port we want to expose to the user
EXPOSE 80


# the commands that need to be run
CMD [ "node" ,"app.mjs" ]
