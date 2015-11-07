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

<pre>Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>POST /api/v1/auth</pre>

#### Body

<pre>{"email":"reinhold_kutch@harvey.name","password":"hqn946p50"}</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth&quot; -d &#39;{&quot;email&quot;:&quot;reinhold_kutch@harvey.name&quot;,&quot;password&quot;:&quot;hqn946p50&quot;}&#39; -X POST \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: X_2DaPfIrDgZBWBFV7A3Ow
token-type: Bearer
client: LVNRWNsL3bRT8Gc4ke2_Hg
expiry: 1448113604
uid: reinhold_kutch@harvey.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;5a4b643c708dd35e05dfede1ee4edc09&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: cd464d3a-61a9-4c45-a767-f1ddff6fa1c2
X-Runtime: 0.122586
Content-Length: 221</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "status": "success",
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "reinhold_kutch@harvey.name",
    "email": "reinhold_kutch@harvey.name",
    "created_at": "2015-11-07T13:46:44.782Z",
    "updated_at": "2015-11-07T13:46:44.891Z",
    "admin": false
  }
}</pre>
