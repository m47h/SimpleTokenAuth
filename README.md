# README

This is a SimpleTokenAuth JSON Application.

Seamless JWT authentication for Rails API
https://tools.ietf.org/html/rfc7519
## Description

Knock is an authentication solution for Rails API-only application based on JSON Web Tokens.

### What are JSON Web Tokens?

[![JWT](http://jwt.io/assets/badge.svg)](http://jwt.io/)

## Getting Started

### Installation

Just clone app from git and then execute:

    $ bundle install
    $ rails db:create
    $ rails db:migrate
    $ rails db:seed

### Authenticating from a web or mobile application

Example request to get a token from your API:
```
POST /user_token
{"auth": {"email": "senior@loot.io", "password": "123456"}}
```

Example response from the API:
```
201 Created
{"jwt": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9"}
```

To make an authenticated request to your API, you need to pass the token via the request header:
```
Authorization: JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9
GET /users/:id/transfers/:id
POST /users/:id/transfers
DELETE /users/:id/transfers/:id
PUT /users/:id/transfers/:id
```

Knock responds with a `404 Not Found` when the user cannot be found or the password is invalid. This is a security best practice to avoid giving away information about the existence or not of a particular user.

**NB:** HTTPS should always be enabled when sending a password or token in your request.

### DEMO

https://secure-brook-26409.herokuapp.com/
POST /user_token
{"auth": {"email": "senior@loot.io", "password": "123456"}}