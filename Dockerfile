FROM node:10

ENV  WORKDIR=/usr/src/app
ENV CONFIGFILE=${WORKDIR}/package.json

RUN mkdir -p ${WORKDIR}

RUN cd ${WORK_DIR} \
  && npm install

COPY . /usr/src/app/
COPY package*.json ./

VOLUME /usr/src/app

# EXPOSE 8080
CMD [ "node"]
