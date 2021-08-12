FROM golang:latest

RUN mkdir /app
WORKDIR /app

RUN apt install git && git clone https://github.com/vutratenko/pig.git
WORKDIR /app/pig
RUN ls -la

RUN go build


EXPOSE 8000

CMD ["./pig"]

