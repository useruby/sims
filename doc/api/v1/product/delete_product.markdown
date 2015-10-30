# Product API

## Delete product

### DELETE /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: tzGeOJbiW3O0TMkgpo83Yw
Token-Type: Bearer
Client: 51zrMbTJcwxSFPmscazGEw
Expiry: 1447413586
Uid: tod_gibson@mraz.name
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>DELETE /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;&#39; -X DELETE \
	-H &quot;Access-Token: tzGeOJbiW3O0TMkgpo83Yw&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: 51zrMbTJcwxSFPmscazGEw&quot; \
	-H &quot;Expiry: 1447413586&quot; \
	-H &quot;Uid: tod_gibson@mraz.name&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
access-token: tzGeOJbiW3O0TMkgpo83Yw
token-type: Bearer
client: 51zrMbTJcwxSFPmscazGEw
expiry: 1447413586
uid: tod_gibson@mraz.name
Content-Type: application/json; charset=utf-8
ETag: W/&quot;99914b932bd37a50b983c5e7c90ae93b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7e479660-80f9-4e07-a604-198e823b2e69
X-Runtime: 0.114173
Content-Length: 2</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
}</pre>
