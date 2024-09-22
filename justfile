[private]
default:
    @just --list --unsorted

run *arguments:
    go run oak.go {{arguments}}

test:
    go test -v

lint:
    gofmt -w -s .
    golines -m 120 -w .
