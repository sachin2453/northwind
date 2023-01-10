FROM golang:1.13 as builder
WORKDIR /app
COPY invoke.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -v -o server

FROM python:3.8-slim-buster
USER root
WORKDIR /dbt
RUN pip install dbt-bigquery
COPY --from=builder /app/server ./
COPY script.sh ./
COPY . ./

ENTRYPOINT "./server"