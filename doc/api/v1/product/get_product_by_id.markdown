# Product API

## Get product by id

### GET /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: Lbb0hdXMxBSN3RMP79X9aA
Token-Type: Bearer
Client: IPqZxlk-rbJ1jzX-7KQUyg
Expiry: 1447413588
Uid: tod_gibson@mraz.name
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -X GET \
	-H &quot;Access-Token: Lbb0hdXMxBSN3RMP79X9aA&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: IPqZxlk-rbJ1jzX-7KQUyg&quot; \
	-H &quot;Expiry: 1447413588&quot; \
	-H &quot;Uid: tod_gibson@mraz.name&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: Lbb0hdXMxBSN3RMP79X9aA
token-type: Bearer
client: IPqZxlk-rbJ1jzX-7KQUyg
expiry: 1447413588
uid: tod_gibson@mraz.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f3bddef84ea2f6bf75af4cf7fa262fdd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 69101b01-e035-4df6-83cb-86337b42fa2e
X-Runtime: 0.119723
Content-Length: 380</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n      Newton's Cradle is a classic! Also known as balance balls, \n      these steel balls keep you entertained throughout the day. Pull back \n      one or more of the balls and let them drop down.\n    ",
  "price": "$8.50",
  "quantity": 10,
  "created_by": {
    "id": 1,
    "email": "tod_gibson@mraz.name"
  }
}</pre>
