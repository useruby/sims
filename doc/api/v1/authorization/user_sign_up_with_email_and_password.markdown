# Authorization API

## User sign up with email and password

### POST /api/v1/auth

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

<pre>POST /api/v1/auth</pre>

#### Body

<pre>email=erik%40osinski.org&password=urrumtva</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth&quot; -d &#39;email=erik%40osinski.org&amp;password=urrumtva&#39; -X POST \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: DS4vGaaeKTeQ0UAeFtQltg
token-type: Bearer
client: PuKfMMsbGbt3yw1wxVrKHg
expiry: 1447330074
uid: erik@osinski.org
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cff4ba60877749bce7b18cafd990ef8a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: aa8cb24e-985f-4793-9573-4036dbd839b8
X-Runtime: 0.239304
Content-Length: 201</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "status": "success",
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "erik@osinski.org",
    "email": "erik@osinski.org",
    "created_at": "2015-10-29T12:07:54.748Z",
    "updated_at": "2015-10-29T12:07:54.967Z",
    "admin": false
  }
}</pre>
