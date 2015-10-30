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

<pre>email=darian%40macgyverrunte.net&password=07q3fu5sx</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth&quot; -d &#39;email=darian%40macgyverrunte.net&amp;password=07q3fu5sx&#39; -X POST \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: ZGjee9aZ18ynyGoSM4eQsg
token-type: Bearer
client: 6J90elFuedOjrLFYEYCQ9w
expiry: 1447413588
uid: darian@macgyverrunte.net
Content-Type: application/json; charset=utf-8
ETag: W/&quot;5ef658b932e6461841b8ebc7c198bbf8&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 96948b1b-9212-4e57-bf7c-03f667f30457
X-Runtime: 0.130234
Content-Length: 217</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "status": "success",
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "darian@macgyverrunte.net",
    "email": "darian@macgyverrunte.net",
    "created_at": "2015-10-30T11:19:48.694Z",
    "updated_at": "2015-10-30T11:19:48.802Z",
    "admin": false
  }
}</pre>
