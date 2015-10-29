# Product API

## Delete product

### DELETE /api/v1/products/:id

### Parameters

Name : id *- required -*
Description : product id

### Request

#### Headers

<pre>Access-Token: FWBF4BAanC0qKSWk8T08Tw
Token-Type: Bearer
Client: GzuOdJ9vm-ez0S9kdbx3PA
Expiry: 1447330072
Uid: emory@ricemacejkovic.net
Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>DELETE /api/v1/products/1</pre>

#### cURL

<pre class="request">curl &quot;localhost:3000/api/v1/products/1&quot; -d &#39;&#39; -X DELETE \
	-H &quot;Access-Token: FWBF4BAanC0qKSWk8T08Tw&quot; \
	-H &quot;Token-Type: Bearer&quot; \
	-H &quot;Client: GzuOdJ9vm-ez0S9kdbx3PA&quot; \
	-H &quot;Expiry: 1447330072&quot; \
	-H &quot;Uid: emory@ricemacejkovic.net&quot; \
	-H &quot;Content-Type: application/x-www-form-urlencoded&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;99914b932bd37a50b983c5e7c90ae93b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a9896f48-781d-4f10-861f-85eec49a1542
X-Runtime: 0.118094
Content-Length: 2</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
}</pre>
