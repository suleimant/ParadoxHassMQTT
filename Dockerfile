FROM node:10

ENV  WORKDIR=/usr/src/app
ENV CONFIGFILE=${WORKDIR}/package.json

RUN mkdir -p ${WORKDIR}

COPY package*.json ./

RUN cd ${WORK_DIR} \
  && npm install

COPY . /usr/src/app/

VOLUME /usr/src/app

# EXPOSE 8080
CMD [ "node"]
