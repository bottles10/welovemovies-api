## Project Overview

Created database and back-end application for an API which returns information about movies, theaters, reviews and critics.
Built using:

- PostgreSQL
- Ruby on Rails
- Minitest

In this project, I demonstrated the following:

- Installed and used common middleware packages.
- Built application that receives requests through routes and accesses relevant information through route and query parameters.
- Run tests from the command line.
- Created an error handler for the case where a route does not exist.
- Built an API following RESTful design principles.
- Setup postsgesql for database management.
- Write database queries to complete CRUD routes in an rails server.
- Returned joined and nested data with ActiveRecord.
- Wrote database migrations using ActiveRecord migration.

## Routes

The following routes and methods are available:

### Movies

#### `/movies`

- `GET` returns all columns for each movie in the database

#### `/movies?is_showing=true`

- `GET` returns all columns for each movie in database that is currently showing

#### `/movies/:movieId`

- `GET` returns all columns for requested movie

#### `/movies/:movieId`

- `GET` returns all columns for movie and its theaters where the requested movie is playing

#### `/movies/:movieId/reviews`

- `GET` returns all columns, including detailed critic data, for each review of the requested movie

### Reviews

#### `/reviews`
- `Get` returns all colums for reviews and movie associated and critic column

#### `/reviews/:reviewId`

- `PUT` updates data for requested review and returns all columns for that review including updated and detailed critic data

* `DELETE` deletes requested review from database

### Theaters

#### `/theaters`

- `GET` returns all columns for each theater in the database with detailed movie data for each movie showing at that theater

### To run locally

1. Run `bundle install`
2. Setup Database for your enironment
3. Run `rails db:setup`
4. Run `rails db:migrate`
5. Run `rails db:seed` to seed your databas with sample data
## WeLoveMovies
###### Live Backend link: [https://welovemovies-api-8mzu.onrender.com/](https://welovemovies-api-8mzu.onrender.com/)

###### Live Frontend with ruby on rails an TailwindCSS link: [https://welovemovies-ceup.onrender.com](https://welovemovies-ceup.onrender.com)


#### Caution: 
Backend and frontend are both running on a free hosted space. please give couple seconds to spin clauster from sleep after inactivity
###### Message from render: `Your free instance will spin down with inactivity, which can delay requests by 50 seconds or more.`


