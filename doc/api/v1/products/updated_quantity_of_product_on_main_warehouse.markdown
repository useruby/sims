# Products API

## Updated quantity of product on main warehouse

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

Name : product_locations_attributes
Description : array where each element contains id, warehouse_id and quantity

### Request

#### Headers

<pre>Access-Token: 6M82QCxBuElg5LLkQOVWOQ
Token-Type: Bearer
Client: AS3Yl8J9LIY398VzUSrUyA
Expiry: 1447429728
Uid: adele_maggio@grady.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>product_locations_attributes[][id]=1&product_locations_attributes[][quantity]=6</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;product_locations_attributes[][id]=1&amp;product_locations_attributes[][quantity]=6&#39; -X PUT \
	-H &quot;Access-Token: 6M82QCxBuElg5LLkQOVWOQ&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: AS3Yl8J9LIY398VzUSrUyA&quot; \
	-H &quot;Expiry: 1447429728&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: 6M82QCxBuElg5LLkQOVWOQ
token-type: Bearer
client: AS3Yl8J9LIY398VzUSrUyA
expiry: 1447429728
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6ee9e0d406683917879768132fbc7674&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f9337bbc-004c-48d9-8142-29ef1fb76184
X-Runtime: 0.129279
Content-Length: 502</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls, \n        these steel balls keep you entertained throughout the day. Pull back \n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 10,
  "created_by": {
    "id": 1,
    "email": "adele_maggio@grady.name"
  },
  "product_locations": [
    {
      "warehouse": "Main warehouse",
      "quantity": 6
    },
    {
      "warehouse": "Second Facility",
      "quantity": 4
    }
  ]
}</pre>
