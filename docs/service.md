## Service Actions

*Summary:*

<table>
<tr>
  <th colspan="3">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>GET</td>
<td>`/services`</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>services found</strong></td>
</tr>
<tr>
  <td colspan="3">
  The default is to retrieve all services.
  </td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>GET</td>
<td>`/services/:id`</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>service found</strong</td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
</table>

### index

The `index` action is a *GET* that retrieves all of the services.
The response body will contain JSON containing an array of services, e.g.:

```json
{
  "services": [
    {
      "id": 1,
      "name": "string",
      "description": "string",
      "category": "string",
      "image": "string"
    }
  ]
}
```

```json
{
  "services": [
  ]
}
```

### show

The `show` action is a *GET* specifing the `id` of the service to retrieve.
If the request is successful the status will be 200, OK, and the response body
 will contain JSON for the service requested, e.g.:

 ```json
 {
   "services": [
     {
       "id": 1,
       "name": "string",
       "description": "string",
       "category": "string",
       "image": "string"
     }
   ]
 }
 ```
 
If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
Request or 404 Not Found, and the response body will be JSON describing the errors.
