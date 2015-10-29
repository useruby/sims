# Product API

## Create a new product

### POST /api/v1/products

### Parameters

Name : sku *- required -*
Description : product sku in the predefined format

Name : name *- required -*
Description : product name (maximum 250 characters)

Name : description
Description : product description (maximum 1024 characters)

Name : price
Description : product price in USD

Name : quantity
Description : product available quantity

### Request

#### Headers

<pre>Access-Token: 00PF0rV10ZKYMkmsMCkFKQ
Token-Type: Bearer
Client: _oKhEyyCkmYfDn7dOYB4dg
Expiry: 1447330072
Uid: emory@ricemacejkovic.net
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>POST /api/v1/products</pre>

#### Body

<pre>sku=B0007P5KHG&name=Toysmith+Newton%27s+Cradle+Physics+Science+Kit&description=%0A++++++Newton%27s+Cradle+is+a+classic%21+Also+known+as+balance+balls%2C+%0A++++++these+steel+balls+keep+you+entertained+throughout+the+day.+Pull+back+%0A++++++one+or+more+of+the+balls+and+let+them+drop+down.%0A++++&price=8.5&quantity=10</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products&quot; -d &#39;sku=B0007P5KHG&amp;name=Toysmith+Newton%27s+Cradle+Physics+Science+Kit&amp;description=%0A++++++Newton%27s+Cradle+is+a+classic%21+Also+known+as+balance+balls%2C+%0A++++++these+steel+balls+keep+you+entertained+throughout+the+day.+Pull+back+%0A++++++one+or+more+of+the+balls+and+let+them+drop+down.%0A++++&amp;price=8.5&amp;quantity=10&#39; -X POST \
	-H &quot;Access-Token: 00PF0rV10ZKYMkmsMCkFKQ&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: _oKhEyyCkmYfDn7dOYB4dg&quot; \
	-H &quot;Expiry: 1447330072&quot; \
	-H &quot;Uid: emory@ricemacejkovic.net&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6ca2722dbcc4065b85098c8f9c6b05cc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 764f9f15-ed79-4bb9-99ad-42890f9341da
X-Runtime: 0.135353
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
