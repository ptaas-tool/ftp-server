# builder stage
# from golang alpine image
FROM golang:1.20-alpine as builder

# Installing Git for alpine
RUN apk add --no-cache git

# create work directory called src
WORKDIR /src

# copy go.mod and go.sum
COPY go.mod go.sum ./

# download dependencies
RUN go mod download

# copy other files
COPY . .

# build golang app
RUN CGO_ENABLED=0 GO111MODULE=on go build -v -o /main -installsuffix cgo -ldflags="-w -s" main.go

# second stage
FROM alpine

# go into app directory
WORKDIR /app

# copy executable file
COPY --from=builder main .

# run app executeable file
CMD ["./main"]
