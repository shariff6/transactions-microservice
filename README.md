##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.0](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [5.0.2](https://github.com/organization/project-name/blob/master/Gemfile#L12)

##### 1. Check out the repository

```bash
git clone https://github.com/shariff6/transactions-microservice.git
```

##### 2. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:create
rails db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000
