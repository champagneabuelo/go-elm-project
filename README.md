# Go-Elm Project

Project that will use Elm at the frontend, with Go as the backend serving data via Firebase. 

## Requirements

Install Elm and Go.

## Compiling

First, install the required Elm packages:

```
elm-package install
```

Then, you can build your application and the Go server that is going to serve your Elm content.

```
yarn client
go build server/server.go
```

### Running the Go server

```
./server
```

