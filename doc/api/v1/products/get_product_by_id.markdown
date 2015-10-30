# Products API

## Get product by id

### GET /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: lrHriW_fdx9XdLNrouID1g
Token-Type: Bearer
Client: ma2u12dAHFaN9sEBF1VlAw
Expiry: 1447429727
Uid: adele_maggio@grady.name
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -X GET \
	-H &quot;Access-Token: lrHriW_fdx9XdLNrouID1g&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: ma2u12dAHFaN9sEBF1VlAw&quot; \
	-H &quot;Expiry: 1447429727&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: lrHriW_fdx9XdLNrouID1g
token-type: Bearer
client: ma2u12dAHFaN9sEBF1VlAw
expiry: 1447429727
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;704ba93b151bfc1b010df9b3752d2a0d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 68ca54b2-3969-425f-8948-ece91941b3c4
X-Runtime: 0.121071
Content-Length: 456</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls, \n        these steel balls keep you entertained throughout the day. Pull back \n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 3,
  "created_by": {
    "id": 1,
    "email": "adele_maggio@grady.name"
  },
  "product_locations": [
    {
      "warehouse": "Main warehouse",
      "quantity": 3
    }
  ]
}</pre>
