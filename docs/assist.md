## Assist Actions

All Assists action requests must include a valid HTTP header `Authorization: Token
 token=<token>` or they will be rejected with a status of 401 Unauthorized.

All of the Assist actions follow the *RESTful* style.

Assists are associated with users and services. Actions will only retrieve a Assist if the user associated with the `Authorization` header is the user.
If this requirement is unmet, the response will be 404 Not Found, except for
 the index action which will return an empty Assists array.

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
<td>`/Assists`</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Assists found</strong></td>
</tr>
<tr>
  <td colspan="3">
  The default is to retrieve all Assists associated with the user.
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/Assists`</td>
<td>n/a</td>
<td>201, Created</td>
<td><strong>Assist created</strong></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>400 Bad Request</td>
  <td><strong>errors</strong></td>
</tr>
<tr>
<td>GET</td>
<td>`/Assists/:id`</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Assist found</strong</td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/Assists/:id`</td>
<td><strong>Assist delta</strong></td>
<td>200, OK</td>
<td><strong>Assist updated</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><strong>errors</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
</table>

### index

The `index` action is a *GET* that retrieves all the Assists associated with a
 user.
The response body will contain JSON containing an array of Assists, e.g.:

```json
{
  "Assists": [
    {
      "id": 1,
      "service_id": 1,
      "service": {
            "id": 1,
            "name": "string",
            "description": "string",
            "category": "string",
            "image": "string"
          },
      "fulfilled": false,
      "editable": true
      }
  ]
}
```

If there are no Assists associated with the user, the response body will contain an empty Assists array, e.g.:

```json
{
  "Assists": [
  ]
}
```

### create

The `create` action expects a *POST* with an empty body (e.g `''` or `'{}'` if
 JSON).
If the request is successful, the response will have an HTTP Status of 201
 Created, and the body will contain JSON of the created Assist with `editable` set
to the user calling `create`, e.g.:

```json
{
  "Assists": [
    {
      "id": 1,
      "service_id": 1,
      "service": {
            "id": 1,
            "name": "string",
            "description": "string",
            "category": "string",
            "image": "string"
          },
      "fulfilled": false,
      "editable": true
      }
  ]
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.

### show

The `show` action is a *GET* specifing the `id` of the Assist to retrieve.
If the request is successful the status will be 200, OK, and the response body
 will contain JSON for the Assist requested, e.g.:

```json
{
  "Assists": [
    {
      "id": 1,
      "service_id": 1,
      "service": {
            "id": 1,
            "name": "string",
            "description": "string",
            "category": "string",
            "image": "string"
          },
      "fulfilled": false,
      "editable": true
      }
  ]
}
```

### update

#### update a Assist's states

This `update` action expects a *PATCH* with changes to to an existing Assist. To update, toggle between the boolean stating if the assist is fulfilled.

The `update` action expects data formatted as such:
```json
{
  "Assists": [
    {
      "id": 1,
      "service_id": 1,
      "service": {
            "id": 1,
            "name": "string",
            "description": "string",
            "category": "string",
            "image": "string"
          },
      "fulfilled": true,
      "editable": true
      }
  ]
}
```

If the request is successful, the response will have an HTTP Status of 200 OK,
 and the body will be JSON containing the modified Assist, e.g.:

```json
{
  "Assists": [
    {
      "id": 1,
      "service_id": 1,
      "service": {
            "id": 1,
            "name": "string",
            "description": "string",
            "category": "string",
            "image": "string"
          },
      "fulfilled": true,
      "editable": true
      }
  ]
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.
