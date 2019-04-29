FROM golang:1.12.1-stretch
ARG GITHUB_ACCESS_TOKEN
RUN mkdir /build
COPY *.go /build/
COPY go.mod /build/
COPY go.sum /build/
RUN git config --global url.https://$GITHUB_ACCESS_TOKEN@github.com/.insteadOf https://github.com/ && cd /build && go mod vendor && go build . && rm /root/.gitconfig
ENTRYPOINT "bash"
