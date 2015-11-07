# Products API

## Remove product from the warehouse

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
Access-Token: WzbFolnRAVjohW0h9OIfww
Token-Type: Bearer
Client: Wf24sSl0wzgs7zBiySOotA
Expiry: 1448113607
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>{"product_locations_attributes":[{"id":1,"_destroy":true}]}</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;{&quot;product_locations_attributes&quot;:[{&quot;id&quot;:1,&quot;_destroy&quot;:true}]}&#39; -X PUT \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot; \
	-H &quot;Access-Token: WzbFolnRAVjohW0h9OIfww&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: Wf24sSl0wzgs7zBiySOotA&quot; \
	-H &quot;Expiry: 1448113607&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: WzbFolnRAVjohW0h9OIfww
token-type: Bearer
client: Wf24sSl0wzgs7zBiySOotA
expiry: 1448113607
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;661869501a32a8a702bde345ff3f425a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 52defd71-733a-448d-b8a0-8f9e72bb59f6
X-Runtime: 0.126403
Content-Length: 452</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 4,
  "created_by": {
    "id": 1,
    "email": "geo@hahnhackett.info"
  },
  "product_locations": [
    {
      "warehouse": "Second Facility",
      "quantity": 4
    }
  ]
}</pre>
