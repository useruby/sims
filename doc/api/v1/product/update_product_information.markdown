# Product API

## Update product information

### PUT /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

Name : sku
Description : product sku in the predefined format

Name : name
Description : product name (maximum 250 characters)

Name : description
Description : product description (maximum 1024 characters)

Name : price
Description : product price in USD

Name : quantity
Description : product available quantity

### Request

#### Headers

<pre>Access-Token: 3MM0E-otbTSaO0GAak5YpA
Token-Type: Bearer
Client: m7eef6-XQp6oZVrxK-V94Q
Expiry: 1447413587
Uid: tod_gibson@mraz.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>name=Updated%3A+Toysmith+Newton%27s+Cradle+Physics+Science+Kit</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;name=Updated%3A+Toysmith+Newton%27s+Cradle+Physics+Science+Kit&#39; -X PUT \
	-H &quot;Access-Token: 3MM0E-otbTSaO0GAak5YpA&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: m7eef6-XQp6oZVrxK-V94Q&quot; \
	-H &quot;Expiry: 1447413587&quot; \
	-H &quot;Uid: tod_gibson@mraz.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: 3MM0E-otbTSaO0GAak5YpA
token-type: Bearer
client: m7eef6-XQp6oZVrxK-V94Q
expiry: 1447413587
uid: tod_gibson@mraz.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;3ff8ec68e3ae4851930dd16d24b6ef30&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e1e8670a-6b36-4df3-aae0-cfd97b715b52
X-Runtime: 0.129093
Content-Length: 389</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Updated: Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n      Newton's Cradle is a classic! Also known as balance balls, \n      these steel balls keep you entertained throughout the day. Pull back \n      one or more of the balls and let them drop down.\n    ",
  "price": "$8.50",
  "quantity": 10,
  "created_by": {
    "id": 1,
    "email": "tod_gibson@mraz.name"
  }
}</pre>
