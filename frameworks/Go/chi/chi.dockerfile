FROM docker.io/golang:1.24.2

ADD ./src/chi /chi
WORKDIR /chi

RUN GOAMD64=v3 go build -o server .

EXPOSE 8080

CMD ./server
