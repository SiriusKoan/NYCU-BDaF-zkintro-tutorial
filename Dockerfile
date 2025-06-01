FROM node:20-alpine

RUN apk add --no-cache gcc musl-dev just curl bash git

WORKDIR /app

COPY . .

RUN ./scripts/prepare.sh

CMD ["sleep", "infinity"]
