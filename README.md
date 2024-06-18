# GoExpert-GraphQL

This is a Go project that uses GraphQL for data fetching and SQLite for data storage.

It also uses [gqlgen](https://gqlgen.com) for GraphQL code gen.

## Setup

To set up the database, run the following commands:


```bash
sqlite3 ./data.db
```

Create tables:

```sql
create table categories (id string, name string, description string);
```

## Running the server

To run the server, run the following command:

```bash
go run cmd/server/main.go
```

Access the GraphQL playground at http://localhost:8080

## Querying the server

Here are some example queries:

```graphql
mutation createCategory {
    createCategory(input: {
        name: "Tech",
        description: "Tecnologia"
    }) {
        id
        name
        description
    }
}

query categories {
    categories {
        id
        name
        description
    }
}
```