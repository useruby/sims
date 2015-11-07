# Products API

## Delete product

### DELETE /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: o8BwuXCp0tksVALTGZPoaw
Token-Type: Bearer
Client: 0GOLpqgUyD57EqoapIhmDQ
Expiry: 1448113605
Uid: geo@hahnhackett.info
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>DELETE /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;&#39; -X DELETE \
	-H &quot;Access-Token: o8BwuXCp0tksVALTGZPoaw&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: 0GOLpqgUyD57EqoapIhmDQ&quot; \
	-H &quot;Expiry: 1448113605&quot; \
	-H &quot;Uid: geo@hahnhackett.info&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: o8BwuXCp0tksVALTGZPoaw
token-type: Bearer
client: 0GOLpqgUyD57EqoapIhmDQ
expiry: 1448113605
uid: geo@hahnhackett.info
Content-Type: application/json; charset=utf-8
ETag: W/&quot;99914b932bd37a50b983c5e7c90ae93b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fb8e44c3-65a1-40b5-a8ef-356a94b8ba20
X-Runtime: 0.116665
Content-Length: 2</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
}</pre>
