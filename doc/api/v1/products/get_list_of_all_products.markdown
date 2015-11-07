# Products API

## Get list of all products

### GET /api/v1/products
### Request

#### Headers

<pre>Access-Token: j1KSguaRJveYIcLaPzo46w
Token-Type: Bearer
Client: Ndm8q0Bm2n-ejg0kPpslJQ
Expiry: 1448113606
Uid: geo@hahnhackett.info
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products&quot; -X GET \
	-H &quot;Access-Token: j1KSguaRJveYIcLaPzo46w&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: Ndm8q0Bm2n-ejg0kPpslJQ&quot; \
	-H &quot;Expiry: 1448113606&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: j1KSguaRJveYIcLaPzo46w
token-type: Bearer
client: Ndm8q0Bm2n-ejg0kPpslJQ
expiry: 1448113606
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;35f758de0f80d78574fed5135ee46407&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 49be1595-4fb4-498f-a2cc-ef3bf122bfbf
X-Runtime: 0.134305
Content-Length: 1680</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "products": [
    {
      "sku": "B0007P5KHG",
      "name": "Toysmith Newton's Cradle Physics Science Kit",
      "description": "\n        Newton's Cradle is a classic! Also known as balance balls,\n        these steel balls keep you entertained throughout the day. Pull back\n        one or more of the balls and let them drop down.\n      ",
      "price": "$8.50",
      "quantity": 9,
      "created_by": {
        "id": 1,
        "email": "lonny@davichinner.name"
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
    },
    {
      "sku": "B004C34D5O",
      "name": "Orion - Electronic Perpetual Motion",
      "description": "\n        The Revolving Cosmos Perpetual Motion Desktop Toy is perfect for\n        your outer space themed office or room decor. A simple spin of the\n        top of the base sets the galaxy in motion. The multicolored rings\n        start spinning in different orbits around the planet in the center.\n        A top seller in the space museum stores and a cool gift for the\n        science physics enthusiast. Measures 11.5 inches tall.\n      ",
      "price": "$10.47",
      "quantity": 0,
      "created_by": {
        "id": 1,
        "email": "lonny@davichinner.name"
      },
      "product_locations": [

      ]
    },
    {
      "sku": "B00AJSWLO6",
      "name": "1 X Asteroid - Perpetual Motion",
      "description": "\n        The Asteroid - Perpetual Motion is a piece of revolving art for your\n        desk. This kinetic sculpture has several brightly colored metallic\n        balls that rotate like a ferris wheel. It will keep you and anybody\n        else who watches it mesmerized for hours. Once star\n      ",
      "price": "$9.78",
      "quantity": 5,
      "created_by": {
        "id": 1,
        "email": "lonny@davichinner.name"
      },
      "product_locations": [
        {
          "warehouse": "Main warehouse",
          "quantity": 5
        }
      ]
    }
  ]
}</pre>
