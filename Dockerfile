FROM golang:1.12.1-stretch
RUN mkdir /build
COPY cmd /build/cmd
COPY go.mod /build/
COPY go.sum /build/
RUN cd /build && go mod vendor && go build ./cmd/...
ENTRYPOINT "bash"
