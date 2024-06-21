.PHONY: setup start gen

setup:
	sqlite3 ./data.db < ./sql/create_tables.sql

start:
	go run cmd/server/main.go

gen:
	go run github.com/99designs/gqlgen generate
