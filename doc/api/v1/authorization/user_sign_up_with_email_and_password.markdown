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

<pre>email=jarvis_nader%40douglasjakubowski.net&password=irlprn0i</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth&quot; -d &#39;email=jarvis_nader%40douglasjakubowski.net&amp;password=irlprn0i&#39; -X POST \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: QgKF7E8Ds5XK-fwMh3pXWQ
token-type: Bearer
client: hlfDBdEl6305HQvQwtJFBA
expiry: 1447429730
uid: jarvis_nader@douglasjakubowski.net
Content-Type: application/json; charset=utf-8
ETag: W/&quot;982c19902b05706f399fd6af176bdbc5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: baa70f21-4a7f-4686-bf7e-567c6331b391
X-Runtime: 0.121336
Content-Length: 237</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "status": "success",
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "jarvis_nader@douglasjakubowski.net",
    "email": "jarvis_nader@douglasjakubowski.net",
    "created_at": "2015-10-30T15:48:49.992Z",
    "updated_at": "2015-10-30T15:48:50.101Z",
    "admin": false
  }
}</pre>
