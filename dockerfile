FROM node:14

WORKDIR /

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY . .

RUN npm install
RUN apt-get update -y
RUN apt-get install python -y
RUN apt-get install python3-pip -y
# RUN pip3 install -r requirements.txt
RUN pip3 install bs4
RUN pip3 install requests

EXPOSE 80
CMD  ["npm", "start"]