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

<pre>Access-Token: 4soJUC8PsBaDr82zs5Z-Hg
Token-Type: Bearer
Client: J1rQi0rhDB7GFEcRLXYLVA
Expiry: 1447429729
Uid: adele_maggio@grady.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>product_locations_attributes[][id]=1&product_locations_attributes[][_destroy]=true</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;product_locations_attributes[][id]=1&amp;product_locations_attributes[][_destroy]=true&#39; -X PUT \
	-H &quot;Access-Token: 4soJUC8PsBaDr82zs5Z-Hg&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: J1rQi0rhDB7GFEcRLXYLVA&quot; \
	-H &quot;Expiry: 1447429729&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: 4soJUC8PsBaDr82zs5Z-Hg
token-type: Bearer
client: J1rQi0rhDB7GFEcRLXYLVA
expiry: 1447429729
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c90bd2e760c0a68ad68926f60c9295bf&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 58cd37d2-2679-4359-a2d9-d2bcbf8a7da4
X-Runtime: 0.126004
Content-Length: 457</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls, \n        these steel balls keep you entertained throughout the day. Pull back \n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 4,
  "created_by": {
    "id": 1,
    "email": "adele_maggio@grady.name"
  },
  "product_locations": [
    {
      "warehouse": "Second Facility",
      "quantity": 4
    }
  ]
}</pre>
