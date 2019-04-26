FROM golang:1.12.1-stretch
RUN mkdir /build
COPY pkg /build/pkg
COPY go.mod /build/
COPY go.sum /build/
RUN cd /build && go mod vendor && go build ./pkg/...
ENTRYPOINT "bash"
