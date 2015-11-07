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

<pre>Accept: application/json
Content-Type: application/json
Access-Token: uMDf8uWZwvanvJY227vG-g
Token-Type: Bearer
Client: k6A3jZdk6D3fxOPcudrFSg
Expiry: 1448113607
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>{"product_locations_attributes":[{"id":1,"quantity":6}]}</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;{&quot;product_locations_attributes&quot;:[{&quot;id&quot;:1,&quot;quantity&quot;:6}]}&#39; -X PUT \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot; \
	-H &quot;Access-Token: uMDf8uWZwvanvJY227vG-g&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: k6A3jZdk6D3fxOPcudrFSg&quot; \
	-H &quot;Expiry: 1448113607&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: uMDf8uWZwvanvJY227vG-g
token-type: Bearer
client: k6A3jZdk6D3fxOPcudrFSg
expiry: 1448113607
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2c16d801c0f3decf6452a50c789d5cdb&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d6b3e108-14e7-4328-84d2-092725a51bca
X-Runtime: 0.128655
Content-Length: 497</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 10,
  "created_by": {
    "id": 1,
    "email": "geo@hahnhackett.info"
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
