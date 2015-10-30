# Products API

## Delete product

### DELETE /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: XvwoHWkIa1S3v1NAawLLog
Token-Type: Bearer
Client: O7p0fhgQKzuWF76Psp1UEA
Expiry: 1447429726
Uid: adele_maggio@grady.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>DELETE /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;&#39; -X DELETE \
	-H &quot;Access-Token: XvwoHWkIa1S3v1NAawLLog&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: O7p0fhgQKzuWF76Psp1UEA&quot; \
	-H &quot;Expiry: 1447429726&quot; \
	-H &quot;Uid: adele_maggio@grady.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: XvwoHWkIa1S3v1NAawLLog
token-type: Bearer
client: O7p0fhgQKzuWF76Psp1UEA
expiry: 1447429726
uid: adele_maggio@grady.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;99914b932bd37a50b983c5e7c90ae93b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9d555034-80fe-43e9-b5c0-9157ae3a7433
X-Runtime: 0.115790
Content-Length: 2</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
}</pre>
