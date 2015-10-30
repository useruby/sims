# Products API

## Get list of all products

### GET /api/v1/products
### Request

#### Headers

<pre>Access-Token: 1MZDJB31aXzsZxYloCZ6ww
Token-Type: Bearer
Client: j0TCEILIfg4vmDi4afxnJg
Expiry: 1447429729
Uid: adele_maggio@grady.name
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /api/v1/products</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products&quot; -X GET \
	-H &quot;Access-Token: 1MZDJB31aXzsZxYloCZ6ww&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: j0TCEILIfg4vmDi4afxnJg&quot; \
	-H &quot;Expiry: 1447429729&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: 1MZDJB31aXzsZxYloCZ6ww
token-type: Bearer
client: j0TCEILIfg4vmDi4afxnJg
expiry: 1447429729
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;4fc10cd2fe5cb6195f0c2a3dcc8e28d7&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ddb5e1a4-4f8c-4a22-a94e-e869dc2814a1
X-Runtime: 0.131594
Content-Length: 1689</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "products": [
    {
      "sku": "B0007P5KHG",
      "name": "Toysmith Newton's Cradle Physics Science Kit",
      "description": "\n        Newton's Cradle is a classic! Also known as balance balls, \n        these steel balls keep you entertained throughout the day. Pull back \n        one or more of the balls and let them drop down.\n      ",
      "price": "$8.50",
      "quantity": 9,
      "created_by": {
        "id": 1,
        "email": "toby_stamm@towne.info"
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
      "description": "\n        The Revolving Cosmos Perpetual Motion Desktop Toy is perfect for \n        your outer space themed office or room decor. A simple spin of the \n        top of the base sets the galaxy in motion. The multicolored rings \n        start spinning in different orbits around the planet in the center. \n        A top seller in the space museum stores and a cool gift for the \n        science physics enthusiast. Measures 11.5 inches tall. \n      ",
      "price": "$10.47",
      "quantity": 0,
      "created_by": {
        "id": 1,
        "email": "toby_stamm@towne.info"
      },
      "product_locations": [

      ]
    },
    {
      "sku": "B00AJSWLO6",
      "name": "1 X Asteroid - Perpetual Motion",
      "description": "\n        The Asteroid - Perpetual Motion is a piece of revolving art for your \n        desk. This kinetic sculpture has several brightly colored metallic \n        balls that rotate like a ferris wheel. It will keep you and anybody \n        else who watches it mesmerized for hours. Once star \n      ",
      "price": "$9.78",
      "quantity": 5,
      "created_by": {
        "id": 1,
        "email": "toby_stamm@towne.info"
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
