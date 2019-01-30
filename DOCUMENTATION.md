# DOCUMENTATION

## Test API with Postman

```shell
headers: "accept: application/json", "Authorization: token='OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6'"
```

### GraphQL

#### News - GraphQL

```shell
# Get all News
url: `/api/v1/graphql?query={allNews{id, title, content, description, errors}}`

# Get specific News
url: `/api/v1/graphql?query={news(id:1){id, title, content, description, errors}}`
```

### REST

#### Users - REST

```shell
# Sign In
url: `/users/sign_in`
method: POST
body: {
  "user": {
    "email": "john.j@doe.com",
    "password": "12345678",
  }
}

# Sign Up
url: `/users`
method: POST
body: {
  "user": {
    "first_name": "John J",
    "last_name": "Doe",
    "email": "john.j@doe.com",
    "username": "joh.j",
    "password": "12345678",
    "password_confirmation": "12345678",
    "role": 1
  }
}
```

#### News - REST

```shell
# Get all News
url: `/api/v1/news`
method: GET

# Get specific News
url: `/api/v1/news/:id`
method: GET

# Create News
url: `/api/v1/news`
method: POST
body: {
    "title": "Title",
    "description": "My news",
    "content": "News content"
}

# Update News
url: `/api/v1/news/:id`
method: PUT
body: {
    "title": "New Title",
    "description": "My news",
    "content": "Updated content"
}

# Delete News
url: `/api/v1/news/:id`
method: DELETE
```
