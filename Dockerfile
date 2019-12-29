FROM node:10

ENV  WORKDIR=/usr/src/app
ENV CONFIGFILE=${WORKDIR}/package.json

RUN mkdir -p ${WORKDIR}

COPY package*.json ./

RUN cd ${WORK_DIR} \
  && npm install

COPY . ${WORK_DIR}

VOLUME ${WORKDIR}

# EXPOSE 8080
CMD [ "node"]
