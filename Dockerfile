
FROM public.ecr.aws/lambda/nodejs:18

COPY src/package*.json ./

RUN npm install --production

COPY src/index.js ./

CMD ["app.handler"]
