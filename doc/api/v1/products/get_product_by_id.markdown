# Products API

## Get product by id

### GET /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: ppp0eWAKxqa4pgm-TdHQGQ
Token-Type: Bearer
Client: 7lAUCH3w36WxNIHc9dsIqg
Expiry: 1448113605
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -X GET \
	-H &quot;Access-Token: ppp0eWAKxqa4pgm-TdHQGQ&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: 7lAUCH3w36WxNIHc9dsIqg&quot; \
	-H &quot;Expiry: 1448113605&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: ppp0eWAKxqa4pgm-TdHQGQ
token-type: Bearer
client: 7lAUCH3w36WxNIHc9dsIqg
expiry: 1448113605
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;83373a0be15a2a95fc6c7b82ff86f25a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 21b1218d-2be2-43e6-8b14-89519f53c763
X-Runtime: 0.161531
Content-Length: 451</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 3,
  "created_by": {
    "id": 1,
    "email": "geo@hahnhackett.info"
  },
  "product_locations": [
    {
      "warehouse": "Main warehouse",
      "quantity": 3
    }
  ]
}</pre>
