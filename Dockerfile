FROM node:slim
#Set the working directory
WORKDIR /home/apps
#Set env to development
ENV NODE_ENV development
#Copy local contents into the container working directory
COPY . .
#Install dependencies
RUN npm install
# Expose container port
EXPOSE 8080
#Spin up the server
CMD ["npm", "run", "serve"]