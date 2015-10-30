# Product API

## Get list of all products

### GET /api/v1/products
### Request

#### Headers

<pre>Access-Token: 4eGiBe2Znuk7rB7abuPT5A
Token-Type: Bearer
Client: ZLdtMqxoMb6n7dZpN3cJYA
Expiry: 1447413588
Uid: tod_gibson@mraz.name
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products&quot; -X GET \
	-H &quot;Access-Token: 4eGiBe2Znuk7rB7abuPT5A&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: ZLdtMqxoMb6n7dZpN3cJYA&quot; \
	-H &quot;Expiry: 1447413588&quot; \
	-H &quot;Uid: tod_gibson@mraz.name&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: 4eGiBe2Znuk7rB7abuPT5A
token-type: Bearer
client: ZLdtMqxoMb6n7dZpN3cJYA
expiry: 1447413588
uid: tod_gibson@mraz.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8b556a4029316e02e96f9fb09c9f024a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3f6bcf10-dadb-42c0-8439-f3853e376578
X-Runtime: 0.127378
Content-Length: 1500</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "products": [
    {
      "sku": "B0007P5KHG",
      "name": "Toysmith Newton's Cradle Physics Science Kit",
      "description": "\n      Newton's Cradle is a classic! Also known as balance balls, \n      these steel balls keep you entertained throughout the day. Pull back \n      one or more of the balls and let them drop down.\n    ",
      "price": "$8.50",
      "quantity": 10,
      "created_by": {
        "id": 1,
        "email": "clair_abernathy@casperluettgen.info"
      }
    },
    {
      "sku": "B004C34D5O",
      "name": "Orion - Electronic Perpetual Motion",
      "description": "\n      The Revolving Cosmos Perpetual Motion Desktop Toy is perfect for \n      your outer space themed office or room decor. A simple spin of the \n      top of the base sets the galaxy in motion. The multicolored rings \n      start spinning in different orbits around the planet in the center. \n      A top seller in the space museum stores and a cool gift for the \n      science physics enthusiast. Measures 11.5 inches tall. \n    ",
      "price": "$10.47",
      "quantity": 0,
      "created_by": {
        "id": 1,
        "email": "clair_abernathy@casperluettgen.info"
      }
    },
    {
      "sku": "B00AJSWLO6",
      "name": "1 X Asteroid - Perpetual Motion",
      "description": "\n      The Asteroid - Perpetual Motion is a piece of revolving art for your \n      desk. This kinetic sculpture has several brightly colored metallic \n      balls that rotate like a ferris wheel. It will keep you and anybody \n      else who watches it mesmerized for hours. Once star \n    ",
      "price": "$9.78",
      "quantity": 8,
      "created_by": {
        "id": 1,
        "email": "clair_abernathy@casperluettgen.info"
      }
    }
  ]
}</pre>
