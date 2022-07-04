FROM node:16
# Names a stable version as oppossed to 'node:latest'.

WORKDIR /usr/src/app
# Location of app within container.

COPY package*.json ./
# Bring both package files into the './' working directory of container ('*' is a wild card symbol).

RUN npm install
# Instals dependancies from 'package.json'.

COPY . .
# Copy over all other project files to the container.

EXPOSE 3000
# Declare the port that the container will run on.

CMD ["npm", "start"]
# Command in array format to run the 'start' script in 'package.json'.