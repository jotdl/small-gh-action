FROM golang:1.21 AS build

WORKDIR /src
COPY . /src
RUN go build -o /ic-assignment .

ENTRYPOINT ["/ic-assignment"]