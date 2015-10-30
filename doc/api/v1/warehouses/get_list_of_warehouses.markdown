# Warehouses API

## Get list of warehouses

### GET /api/v1/warehouses
### Request

#### Headers

<pre>Access-Token: _YS341Dm_jUGBp52zZCzHA
Token-Type: Bearer
Client: BO3GYB0VyvYiWNLfpz7igA
Expiry: 1447429725
Uid: adele_maggio@grady.name
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/warehouses</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/warehouses&quot; -X GET \
	-H &quot;Access-Token: _YS341Dm_jUGBp52zZCzHA&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: BO3GYB0VyvYiWNLfpz7igA&quot; \
	-H &quot;Expiry: 1447429725&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: _YS341Dm_jUGBp52zZCzHA
token-type: Bearer
client: BO3GYB0VyvYiWNLfpz7igA
expiry: 1447429725
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;333eb62cf52dd7b92df56c0ff7302ba2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c9c7233b-29b9-49f6-88ad-a17fffd82604
X-Runtime: 0.149792
Content-Length: 83</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "warehouses": [
    {
      "id": 1,
      "name": "Main warehouse"
    },
    {
      "id": 2,
      "name": "Second Facility"
    }
  ]
}</pre>
