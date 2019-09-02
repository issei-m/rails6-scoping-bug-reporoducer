# rails6-scoping-bug-reproducer

## Setup

In the project directory where you cloned this repository at, execute followings:

```
docker-compose up
docker-compose exec -e RAILS_ENV=test rails5 bin/setup
docker-compose exec -e RAILS_ENV=test rails6 bin/setup
docker-compose exec rails5 rspec
docker-compose exec rails6 rspec
```
