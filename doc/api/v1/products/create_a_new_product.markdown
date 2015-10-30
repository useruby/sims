# Products API

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

Name : product_locations_attributes
Description : array where each element contains warehouse_id and quantity

### Request

#### Headers

<pre>Access-Token: qvL-ihbW4SYBBHs16G3jtw
Token-Type: Bearer
Client: DZUGMoG6XATAl7jpSS8Hrg
Expiry: 1447429725
Uid: adele_maggio@grady.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>POST /api/v1/products</pre>

#### Body

<pre>sku=B0007P5KHG&name=Toysmith+Newton%27s+Cradle+Physics+Science+Kit&description=%0A++++++++Newton%27s+Cradle+is+a+classic%21+Also+known+as+balance+balls%2C+%0A++++++++these+steel+balls+keep+you+entertained+throughout+the+day.+Pull+back+%0A++++++++one+or+more+of+the+balls+and+let+them+drop+down.%0A++++++&price=8.5&product_locations_attributes[][warehouse_id]=1&product_locations_attributes[][quantity]=5&product_locations_attributes[][warehouse_id]=2&product_locations_attributes[][quantity]=4</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products&quot; -d &#39;sku=B0007P5KHG&amp;name=Toysmith+Newton%27s+Cradle+Physics+Science+Kit&amp;description=%0A++++++++Newton%27s+Cradle+is+a+classic%21+Also+known+as+balance+balls%2C+%0A++++++++these+steel+balls+keep+you+entertained+throughout+the+day.+Pull+back+%0A++++++++one+or+more+of+the+balls+and+let+them+drop+down.%0A++++++&amp;price=8.5&amp;product_locations_attributes[][warehouse_id]=1&amp;product_locations_attributes[][quantity]=5&amp;product_locations_attributes[][warehouse_id]=2&amp;product_locations_attributes[][quantity]=4&#39; -X POST \
	-H &quot;Access-Token: qvL-ihbW4SYBBHs16G3jtw&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: DZUGMoG6XATAl7jpSS8Hrg&quot; \
	-H &quot;Expiry: 1447429725&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: qvL-ihbW4SYBBHs16G3jtw
token-type: Bearer
client: DZUGMoG6XATAl7jpSS8Hrg
expiry: 1447429725
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b2274d38fd8d6b59a935285ec8b80f65&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 69e3c4dc-f097-43d8-bb4a-81a46ccfce74
X-Runtime: 0.182146
Content-Length: 501</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls, \n        these steel balls keep you entertained throughout the day. Pull back \n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 9,
  "created_by": {
    "id": 1,
    "email": "adele_maggio@grady.name"
  },
  "product_locations": [
    {
      "warehouse": "Main warehouse",
      "quantity": 5
    },
    {
      "warehouse": "Second Facility",
      "quantity": 4
    }
  ]
}</pre>
