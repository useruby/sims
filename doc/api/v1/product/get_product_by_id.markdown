# Product API

## Get product by id

### GET /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: VwqNj13BFyo9lT8dmeBE5w
Token-Type: Bearer
Client: W9jm8-mpZONXLAiQgzHvYQ
Expiry: 1447330071
Uid: emory@ricemacejkovic.net
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -X GET \
	-H &quot;Access-Token: VwqNj13BFyo9lT8dmeBE5w&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: W9jm8-mpZONXLAiQgzHvYQ&quot; \
	-H &quot;Expiry: 1447330071&quot; \
	-H &quot;Uid: emory@ricemacejkovic.net&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6ca2722dbcc4065b85098c8f9c6b05cc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e4b04819-fd87-4308-9e00-2714e315785f
X-Runtime: 0.164270
Content-Length: 384</pre>

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
    "email": "emory@ricemacejkovic.net"
  }
}</pre>
