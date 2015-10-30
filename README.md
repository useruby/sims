# README

## Simple Inventory Management System

This a simple web app that contains a numbers of api endpoints for managing the 
products in the warehouses. 

### How to run the web app

The easiest way is to use [docker](https://www.docker.com/).

* clone the repo from the github
* run the following command ```docker build -t sims-app .``` in the root dir for 
  creating the docker container
* run the container ```docker run --name sims-app -d sims-app```
* get the ip address of the container ```docker inspect sims-app | grep \"IPAddress\"```


Without docker on machine that is already has ruby

* clone the repo from the github
* run the ```bundle install``` in the root dir
* run the ```rake db:setup```
* and finally ```rails s```

use ```localhost``` instead of ```<container_ip>``` in the *curl* command

### How to test web app

Db is already contains two users, one of this user has role admin. You can use creadentials 
of this users for testing the app functionality. You can also create user with 
```/api/v1/auth``` endpoint. Look at [Documentation](doc/api/v1/authorization/user_sign_up_with_email_and_password.markdown) 
for getting more information.

For start managing products through api you need to sign in and get an *access token*. 
You can do it with the following command:

```sh
curl -X POST http://<container_ip>:3000/api/v1/auth/sign_in\?email\=user@test.com\&password\=kahgahLuGip2ahy8 -d '' -i
```

response should look like this

```http
HTTP/1.1 200 OK 
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Access-Token: ln7xZwqy9pApLTPglFSqHg
Token-Type: Bearer
Client: dAhQC-zdlNFbkPGa5o4AtA
Expiry: 1447431030
Uid: user@test.com
Content-Type: application/json; charset=utf-8
Etag: W/"9a71ba0e7160830fc54d6915b004e616"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b3128e31-e16b-47ff-b47a-1c625060dab4
X-Runtime: 0.372089
Server: WEBrick/1.3.1 (Ruby/2.2.3/2015-08-18)
Date: Fri, 30 Oct 2015 16:10:30 GMT
Content-Length: 96
Connection: Keep-Alive

{"data":{"id":2,"provider":"email","uid":"user@test.com","email":"user@test.com","admin":false}}
```

Ok, access token is there. It contains 5 fields ```Access-Token```, ```Token-Type```,
```Client```, ```Expiry``` and ```Uid```. You need to send all this fields in the header of the
request for getting an access to resource through api.

*Note: In the real world access token should be changed after each request through api but for
testing purpose this feature is disable and access token is valid for the 2 weeks.*

This is example for getting list of the product:

```sh
curl -X GET http://<container_ip>:3000/api/v1/products -H 'Access-Token: <access_token>' -H 'Token-Type: Bearer' -H 'Client: <client_id>' -H 'Expiry: <expiry>' -H 'Uid: user@test.com'
```

Description for all the api endpoints you can find in the [Documentation](doc/api/v1/index.markdown)
