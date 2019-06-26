FROM keymetrics/pm2

ADD . /src

WORKDIR /src

ENV PORT=80

ENV PATH /usr/local/bin:$PATH

EXPOSE 80

RUN npm install

RUN npm run build

CMD ["pm2-runtime", "process.yml"]
