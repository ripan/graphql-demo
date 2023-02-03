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
```
query ListUsers {
  users {
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
  user(id:1) {
    name
    email
  }
}

query ListPosts {
  posts {
    id
    title
    body
  }
}

query GetPost {
  post(id:1)  {
    title
    body
  }
}

```
![Screenshot 2023-02-03 at 13 46 22](https://user-images.githubusercontent.com/195928/216618769-767589bc-89ed-497a-9dec-884f5017e2b3.png)

