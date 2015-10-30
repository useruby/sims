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

<pre>email=jennifer%40jast.co&password=c5o39fg3x</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth/sign_in&quot; -d &#39;email=jennifer%40jast.co&amp;password=c5o39fg3x&#39; -X POST \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: AI7YHrm0rOahOyQCjD_ipg
token-type: Bearer
client: zVBnaezQLSXOrGDLA5GyRQ
expiry: 1447429729
uid: jennifer@jast.co
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cdf70a5199c951770ae90bddb40f5310&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e222794e-86c8-485b-82da-9a99e385ba15
X-Runtime: 0.128140
Content-Length: 102</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "jennifer@jast.co",
    "email": "jennifer@jast.co",
    "admin": false
  }
}</pre>
