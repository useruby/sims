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

<pre>email=suzanne%40connelly.biz&password=3kq7wtrtl</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth/sign_in&quot; -d &#39;email=suzanne%40connelly.biz&amp;password=3kq7wtrtl&#39; -X POST \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: Y5XoOmUecSmnZtViUNz9AQ
token-type: Bearer
client: iUWFHPKOWM2iToXgL3RE4w
expiry: 1447413588
uid: suzanne@connelly.biz
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ca1091cf1bb30927c452273072e562ad&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a03d30c4-fa69-4857-b5e7-e3f32a0aa0ca
X-Runtime: 0.121037
Content-Length: 110</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "suzanne@connelly.biz",
    "email": "suzanne@connelly.biz",
    "admin": false
  }
}</pre>
