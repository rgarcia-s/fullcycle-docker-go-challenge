FROM golang:alpine3.15 AS compiler

WORKDIR /app

COPY . .

RUN go build .




FROM scratch

WORKDIR /app

COPY --from=compiler /app/hello .

CMD [ "./hello" ]