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

<pre>Access-Token: j2qrpMV7I1VCphOdh0_Sxw
Token-Type: Bearer
Client: evQc39XkJ6q7LXQg8nY3ig
Expiry: 1447330073
Uid: emory@ricemacejkovic.net
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>name=Updated%3A+Toysmith+Newton%27s+Cradle+Physics+Science+Kit</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;name=Updated%3A+Toysmith+Newton%27s+Cradle+Physics+Science+Kit&#39; -X PUT \
	-H &quot;Access-Token: j2qrpMV7I1VCphOdh0_Sxw&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: evQc39XkJ6q7LXQg8nY3ig&quot; \
	-H &quot;Expiry: 1447330073&quot; \
	-H &quot;Uid: emory@ricemacejkovic.net&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;40affd28f2eebfec0152fbfceca4aa39&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ca2816b3-32ec-44e3-b5c6-99438ff2bbc3
X-Runtime: 0.125762
Content-Length: 393</pre>

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
    "email": "emory@ricemacejkovic.net"
  }
}</pre>
