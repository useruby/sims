# Warehouses API

## Get list of warehouses

### GET /api/v1/warehouses
### Request

#### Headers

<pre>Access-Token: KQA0UGado9ge3wCd4eXNGA
Token-Type: Bearer
Client: -VDcQ2e7COprmvPstZ4GOQ
Expiry: 1448113609
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/warehouses</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/warehouses&quot; -X GET \
	-H &quot;Access-Token: KQA0UGado9ge3wCd4eXNGA&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: -VDcQ2e7COprmvPstZ4GOQ&quot; \
	-H &quot;Expiry: 1448113609&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: KQA0UGado9ge3wCd4eXNGA
token-type: Bearer
client: -VDcQ2e7COprmvPstZ4GOQ
expiry: 1448113609
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;333eb62cf52dd7b92df56c0ff7302ba2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: cbd103fc-4a96-4378-b529-e19182ef1282
X-Runtime: 0.125075
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
