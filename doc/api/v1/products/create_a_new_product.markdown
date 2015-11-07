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

<pre>Accept: application/json
Content-Type: application/json
Access-Token: TjVkfpIHU1Uvc2j2wWEemQ
Token-Type: Bearer
Client: aMYOv2q-TeRDPYIpF41tMw
Expiry: 1448113608
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>POST /api/v1/products</pre>

#### Body

<pre>{"sku":"B0007P5KHG","name":"Toysmith Newton's Cradle Physics Science Kit","description":"\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ","price":8.5,"product_locations_attributes":[{"warehouse_id":1,"quantity":5},{"warehouse_id":2,"quantity":4}]}</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products&quot; -d &#39;{&quot;sku&quot;:&quot;B0007P5KHG&quot;,&quot;name&quot;:&quot;Toysmith Newton\u0027s Cradle Physics Science Kit&quot;,&quot;description&quot;:&quot;\n        Newton\u0027s Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      &quot;,&quot;price&quot;:8.5,&quot;product_locations_attributes&quot;:[{&quot;warehouse_id&quot;:1,&quot;quantity&quot;:5},{&quot;warehouse_id&quot;:2,&quot;quantity&quot;:4}]}&#39; -X POST \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot; \
	-H &quot;Access-Token: TjVkfpIHU1Uvc2j2wWEemQ&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: aMYOv2q-TeRDPYIpF41tMw&quot; \
	-H &quot;Expiry: 1448113608&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: TjVkfpIHU1Uvc2j2wWEemQ
token-type: Bearer
client: aMYOv2q-TeRDPYIpF41tMw
expiry: 1448113608
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d7c3ea9e3f6349269bb0eefa32bba554&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 81c5e594-5f56-41c1-8243-2980d571ccc3
X-Runtime: 0.132055
Content-Length: 496</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 9,
  "created_by": {
    "id": 1,
    "email": "geo@hahnhackett.info"
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
