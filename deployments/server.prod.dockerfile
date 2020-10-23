FROM golang:1.15-alpine

ARG PORT
ENV PORT=${PORT}

RUN apk upgrade && apk add --update --no-cache bash

WORKDIR /go/src/server
COPY . .
RUN go build -o ./bin/server ./cmd/server/main.go

EXPOSE  ${PORT}
CMD ./bin/server --PORT=${PORT}