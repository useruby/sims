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

<pre>Access-Token: yDJvlZNjxGVakycFmW1HfQ
Token-Type: Bearer
Client: X7UJEPmmirgHZAjWy6JsmA
Expiry: 1447429729
Uid: adele_maggio@grady.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>PUT /api/v1/products/1</pre>

#### Body

<pre>name=Updated%3A+Toysmith+Newton%27s+Cradle+Physics+Science+Kit</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;name=Updated%3A+Toysmith+Newton%27s+Cradle+Physics+Science+Kit&#39; -X PUT \
	-H &quot;Access-Token: yDJvlZNjxGVakycFmW1HfQ&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: X7UJEPmmirgHZAjWy6JsmA&quot; \
	-H &quot;Expiry: 1447429729&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: yDJvlZNjxGVakycFmW1HfQ
token-type: Bearer
client: X7UJEPmmirgHZAjWy6JsmA
expiry: 1447429729
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f6e589e8518c7d37088d3609b58743db&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 57827ae7-15af-452a-89b0-c8686b8fb956
X-Runtime: 0.127597
Content-Length: 510</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "sku": "B0007P5KHG",
  "name": "Updated: Toysmith Newton's Cradle Physics Science Kit",
  "description": "\n        Newton's Cradle is a classic! Also known as balance balls, \n        these steel balls keep you entertained throughout the day. Pull back \n        one or more of the balls and let them drop down.\n      ",
  "price": "$8.50",
  "quantity": 5,
  "created_by": {
    "id": 1,
    "email": "adele_maggio@grady.name"
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
