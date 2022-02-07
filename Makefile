all: build

build: build-elasticsearch

build-elasticsearch:
	GO111MODULE=on go build -o bin/mysql-elasticsearch ./cmd/mysql-elasticsearch

test:
	GO111MODULE=on go test -timeout 1m --race ./...

clean:
	GO111MODULE=on go clean -i ./...
	@rm -rf bin
