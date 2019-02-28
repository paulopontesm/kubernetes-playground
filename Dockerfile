FROM golang:1.12-alpine as builder

WORKDIR /workdir
COPY hello.go .
RUN go build hello.go

FROM alpine:3.9
WORKDIR /app
COPY --from=builder /workdir/hello .
RUN addgroup -S app &&\
    adduser -S -G app app  &&\
    chown app:app -Rv /app
USER app
CMD ["/app/hello"]
