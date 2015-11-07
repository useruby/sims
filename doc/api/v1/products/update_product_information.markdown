# Products API

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

Name : product_locations_attributes
Description : array where each element contains id, warehouse_id and quantity

### Request

#### Headers

<pre>Accept: application/json
Content-Type: application/json
Access-Token: SqnFS2FkijDGk_-hrZ8YAA
Token-Type: Bearer
Client: H8yvbtFe8hvyi8nsDe3PYw
Expiry: 1448113606
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>{"name":"Updated: Toysmith Newton's Cradle Physics Science Kit"}</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;{&quot;name&quot;:&quot;Updated: Toysmith Newton\u0027s Cradle Physics Science Kit&quot;}&#39; -X PUT \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot; \
	-H &quot;Access-Token: SqnFS2FkijDGk_-hrZ8YAA&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: H8yvbtFe8hvyi8nsDe3PYw&quot; \
	-H &quot;Expiry: 1448113606&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: SqnFS2FkijDGk_-hrZ8YAA
token-type: Bearer
client: H8yvbtFe8hvyi8nsDe3PYw
expiry: 1448113606
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0a7b99ec4c865049d6829814b63066f6&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 4a914444-2fb6-45b8-b6b4-39f6cfa2668f
X-Runtime: 0.129523
Content-Length: 505</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Updated: Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 5,
  "created_by": {
    "id": 1,
    "email": "geo@hahnhackett.info"
  },
  "product_locations": [
    {
      "warehouse": "Main warehouse",
      "quantity": 1
    },
    {
      "warehouse": "Second Facility",
      "quantity": 4
    }
  ]
}</pre>
