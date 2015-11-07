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

<pre>Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>POST /api/v1/auth/sign_in</pre>

#### Body

<pre>{"email":"sylvan@reichertgrimes.org","password":"4sd1rx6oq"}</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/auth/sign_in&quot; -d &#39;{&quot;email&quot;:&quot;sylvan@reichertgrimes.org&quot;,&quot;password&quot;:&quot;4sd1rx6oq&quot;}&#39; -X POST \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: WZR273WOGL16rhaWLkp9cQ
token-type: Bearer
client: U3_HaTdLUZ1yjmbawZMhoQ
expiry: 1448113604
uid: sylvan@reichertgrimes.org
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a117b7b216bb01e652197ec406186bac&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0176c37b-a1e6-4ffc-8d4b-b1a7aa83bd09
X-Runtime: 0.139726
Content-Length: 120</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": 1,
    "provider": "email",
    "uid": "sylvan@reichertgrimes.org",
    "email": "sylvan@reichertgrimes.org",
    "admin": false
  }
}</pre>
