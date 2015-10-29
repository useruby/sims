# Authorization API

## User sign in with email and password

### POST /api/v1/auth/sign_in

this api call returns access token in the header parameter Access-Token

### Parameters

Name : email *- required -*
Description : user email

Name : password *- required -*
Description : user password

### Request

#### Headers

<pre>Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>POST /api/v1/auth/sign_in</pre>

#### Body

<pre>email=rudolph.muller%40dicki.name&password=wm8xh7ej8</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth/sign_in&quot; -d &#39;email=rudolph.muller%40dicki.name&amp;password=wm8xh7ej8&#39; -X POST \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: -ubrw992DlPsUvptfumuOA
token-type: Bearer
client: 5BsMdol5BwrZfxDk_q-DnA
expiry: 1447330075
uid: rudolph.muller@dicki.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c7170741d35a4024e1f6d35a9be347c1&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a9456ceb-1f7a-4f87-bc21-fa0812ac104c
X-Runtime: 0.230337
Content-Length: 120</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "rudolph.muller@dicki.name",
    "email": "rudolph.muller@dicki.name",
    "admin": false
  }
}</pre>
