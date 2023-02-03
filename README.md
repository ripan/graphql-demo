# Graphql Demo App
Demonstrate GraphQL integration with Ruby on Rails

Tech Stack
|              |                |
| - | - |
| Ruby version | ruby 2.7.6p219 |
| Rails version  | 7.0.4.2 |
| Database | sqlite3 |
| Testing Framework | RSpec |
| Query language | GraphQL |

# Usage

Database creation and migration
```
rails db:create db:migrate
```

Database initialization
``` 
rails db:seed
```

How to run the test suite
```
RAILS_ENV=test rspec spec
```

Query Playground URL
```
http://localhost:3000/graphiql
```

GraphQL Queries
```js
query ListPosts {
  posts {
    id
    title
    body
  }
}

query GetPost {
  post(id: 1) {
    title
    body
  }
}

query ListUsers {
  users {
    id
    name
    email
    postsCount
    posts {
      id
      title
    }
  }
}

query GetUser {
  user(id: 49) {
    name
    email
  }
}

mutation CreateUser {
  createUser(input: {
    email: "ripan@test.com", 
    name: "ripan"
  }) {
    user {
      id
      name
    }
    errors
  }
}

mutation UpdateUser {
  updateUser(input: {
    id: 59,
    email: "ripan@testupdated.com", 
    name: "ripan updated"
  }) {
    user {
      id
      name
    }
    errors
  }
}

mutation DeleteUser {
  deleteUser(input: {id: 59}) {
    success
    errors
  }
}

```

<img width="1107" alt="Screenshot 2023-02-03 at 17 47 54" src="https://user-images.githubusercontent.com/195928/216672192-0a1ffa5f-87fa-42cd-819d-dc5c981bb622.png">

