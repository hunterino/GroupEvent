# README

This README documents whatever steps are necessary to get the application up and running.

* Ruby version 6.1.3
* Rails version 3.0.0.p0

* System dependencies

* Configuration

* Database creation

```
rails db:migratera
```

* Database initialization

* How to run the test suite

```
rails spec
```

* Rest Services

| Prefix| Verb | URI Pattern | Controller#Action |
|--|--|--|--|
| group_events | GET | /group_events(.:format) | group_events#index |
| group_events | POST | /group_events(.:format) | group_events#create |
| group_event | GET | /group_events/:id(.:format) | group_events#show |
| group_events | PATCH | /group_events/:id(.:format) | group_events#update |
| group_events | PUT | /group_events/:id(.:format) | group_events#update |
| group_events | DELETE | /group_events/:id(.:format) | group_events#destroy |

* Deployment instructions

```
bundle install
rails s
```

