FROM golang:latest as builder

WORKDIR /app
COPY src/ .

RUN CGO_ENABLED=0 GOOS=linux go build -o fullcycle-rocks


FROM scratch

WORKDIR /app

COPY --from=builder /app/fullcycle-rocks .

ENTRYPOINT [ "./fullcycle-rocks" ]
