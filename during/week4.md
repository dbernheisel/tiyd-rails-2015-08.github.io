---
layout: default
---

## Week 4 - Overview

Students should be comfortable with the following at the end of this week:

* HTTP Verbs and Parameters
* Consuming APIs
* Creating APIs
* Rails Fundamentals
* Routing and Controllers

We will also begin discussing:

1. Software Estimation


## Important Links

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)

## Monday - The Web and APIs

**Challenge:** [Inheritance](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/inheritance_challenge.rb)

**Problem of the Day:** [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)

* Web Basics
  * Web Addresses
  * The Parts of a URL
  * Parameters
* What is an API?
* On the web, what sort of data do we get back from APIs?
  * [Placekitten](http://placekitten.com)
  * [Memegenerator](http://version1.api.memegenerator.net/)
  * [JQuery](http://api.jquery.com/)
  * [Me at GitHub](https://api.github.com/users/masonfmatthews/events)
  * JSON
  * [Who is my Representative](http://whoismyrepresentative.com/getall_mems.php?zip=27701)
  * XML
  * [Twitter](https://dev.twitter.com/rest/public)
  * [Nutritionix](https://www.mashape.com/msilverman/nutritionix-nutrition-database)
  * [TrailAPI](https://www.mashape.com/trailapi/trailapi)
  * [Yoda Speak](https://www.mashape.com/ismaelc/yoda-speak)
  * [Marvel API](http://developer.marvel.com/docs)
  * [Blackjack API](http://deckofcardsapi.com/)
  * [Static Data Sets](http://vincentarelbundock.github.io/Rdatasets/datasets.html)
  * NPR
  * Flickr
  * Getty Images
  * LinkedIn
  * YouTube
  * Twitch
  * IGN
  * ESPN
  * ...and on and on...
* HTTParty
* Postman
* API without logging in
  * https://api.github.com/users/masonfmatthews/events
* API Keys
  * http://www.wunderground.com/weather/api/
* Keeping keys and passwords out of committed code (using ENV)
* Mocking
  * User Input
  * API Calls
  * Time-based Results

#### Lecture Notes/Links

* [Class Video](http://youtu.be/Lv7ydLSbpAs)
* [Challenge Solution](w3-4/vehicle.rb)
* [API Example](w3-4/api.rb)
* [Example Mocking Test](w3-5/test.rb)
* [Example Modified Class](w3-5/sun_rise_and_set.rb)
* [Example Saved JSON File](w3-5/astronomy.json)

#### Evening Reading

* [What is an API?](http://skillcrush.com/2012/07/04/api-2/)
* [Working with APIs](http://www.theodinproject.com/ruby-on-rails/working-with-external-apis?ref=lnav) - Read down to and including the "Restrictions" section.


#### Lecture Notes/Links

* [Class Video](http://youtu.be/0Efac8mwih4)

## Assignment

[Weather Report](https://github.com/tiyd-rails-2015-08/weather_report)


## Tuesday - Rails and the Web

**Challenge:** [Composition](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/composition_challenge.rb)

**Problem of the Day:** [Folder Structure](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/folder_structure)

* Human Learning:
  * Scarring with age/experience
  * Good scarring example: Saving hardest things for last sucks
  * Bad scarring example: Given one bad experience, some people assume that Millenials are all lazy.
  * Bad scarring example: Taking risks on products costs too much money.
  * Diagram: Topological map of scarring
* Human Learning
  * Reading Docs
  * Find out how to call Weather Underground's API with a zip code.
* The Web
  * IP addresses
  * Ports
  * Request/Response
  * Servers
* Rails Introduction
  * `rails new`
  * `bin/rails server`
  * Rails folder structure
  * MVC
  * `bin/rails generate model`
  * `bin/rake db:migrate`
  * `bin/rails generate migration`
  * `bin/rails console`
  * `bin/rails generate controller`
* Unit Testing in Rails

#### Lecture Notes/Links

* [Class Video](http://youtu.be/CYYcNxMNV1w)
* [Example Odd Array Solution](w4-1/odd_array.rb)
* [Example DayForecast Class](w4-1/ten_day_forecast.rb)
* [Our First Rails Project!!](https://github.com/tiyd-rails-2015-08/langhorn_slim_and_the_law)
* [Rails Guides](http://guides.rubyonrails.org/index.html)

#### Evening Reading

* [Why Learning Code is Hard](http://www.vikingcodeschool.com/posts/why-learning-to-code-is-so-damn-hard)

#### Assignment

Get a start on [Create a Voting API](https://github.com/tiyd-rails-2015-08/voting_api):

* Review the requirements and create an ERD
* Create a new Rails app
* Create migrations and models as needed
* Add associations and validations
* Create at least two unit tests for each model
* Make sure that you can run `rake` successfully to run the tests
* Make sure that you can run `rails server` and see the default page in your browser
* Create the `candidates` controller with an `index` action
* Make sure that you can access it in your browser
* Delete `README.rdoc` and make your own (filled in) `README.md`
* Push to GitHub
* Create an estimate for the number of hours you expect to need to complete this assignment tomorrow night

If you anticipate getting to hard or nightmare modes, read those modes before beginning work tonight and take those requirements into account in your models and migrations.

## Wednesday - Controllers and the Router

**Challenge:** [Enumerable](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/enumerable_challenge.rb)

**Optional Challenge:**
[Primes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/primes_challenge.rb)

**Problem of the Day:** [Model to JSON](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/model_to_json)

* Human Learning: How to Google
  * [XKCD on Old Forums](https://xkcd.com/979/)
  * Two types of resources: tutorials and answers.
    * Stackoverflow is great for answers.
    * Blogs (and Rails Guides) are great for tutorials.
  * Be as specific as you can about which technologies you're using.  `ActiveRecord::Base` is a better start to your search than `Rails`
  * You can try questions (e.g. `How do I use ActiveRecord?`)
  * Use Google to dig deeper into someone else's docs (e.g. `weather underground api sunrise`)
  * Search for a module's "API"
* What is an API?
  * The term is way more broad than we think it is.
  * Each class in your application technically has an API.  It's the set of methods you can call on it and its instances.
* Random Topics:
  * `rake db:rollback`
  * `rake db:drop`
* HTML Verbs
  * GET (google.com)
  * POST (coursyl.com)
  * PATCH
  * DELETE
  * Postman
* The Router
  * `config/routes.rb`
* Controllers
* Fat Models, Skinny Controllers
* Controller Testing

#### Lecture Notes/Links

* [Class Video](http://youtu.be/4Zet5JP9nkc)
* [Updated Example App](https://github.com/tiyd-rails-2015-08/langhorn_slim_and_the_law)
* [Postman](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)

#### Evening Reading

* [Building API Basics](http://www.theodinproject.com/ruby-on-rails/apis-and-building-your-own)
* [Railscast on securing APIs](http://railscasts.com/episodes/352-securing-an-api)

#### Assignment

[Create a Voting API](https://github.com/tiyd-rails-2015-08/voting_api).  After you're done, reflect on your estimate from last night:

  * In theory, your estimate should be better now that you've gotten part of the way through the project.
  * Document your number of hours worked at the end.


## Thursday - Serializers, Data

**Challenge:** [Include](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/include_challenge.rb)

**Problem of the Day:** [Assorted JSON](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/assorted_json/)

* Random Topics
  * Explore Rails' Gemfile
  * Dev and Test databases are separate
  * Memoization (`||=`)
  * `as_json`
* Fixtures
* Seeds
* Views and Controller Instance Variables
* Callbacks
  * `before_create`, etc.
* JBuilder
  * `json.name @candidate.name`
  * `json.extract! @candidate, :id, :name, :party`
  * `json.array! @candidates, :id, :name, :party`

#### Lecture Notes/Links

* [Class Video](https://youtu.be/F3tBHnAXb-U)
* [Nate's App Modified During Class](https://github.com/tiyd-rails-2015-08/voting_api_example)
* [Rails Guide on Callbacks](http://guides.rubyonrails.org/v2.3.11/activerecord_validations_callbacks.html#callbacks-overview)
* [JBuilder](https://github.com/rails/jbuilder)
* [JBuilder Railscast](http://railscasts.com/episodes/320-jbuilder)

#### Evening Reading

* [Ruby Rogues: Pair Programming](http://devchat.tv/ruby-rogues/026-rr-pair-programming)

#### Assignment - IN PAIRS

[Build Your Own API](https://github.com/tiyd-rails-2015-08/novel_api)

* Plan your API.
* Investigate your options for existing API data sources.  Register accounts as necessary.
* Create a GitHub organization and a new repository
* Write code in non-ActiveRecord models which successfully pulls from each of your target data sources.  You don't have to do anything with the data they give you back yet.
* Create skeleton controllers with the actions you intend to use (you don't need code in those actions yet).
* Write one test which mocks an API call so that you don't have to hit the real third-party APIs during testing.


## Friday Mini-lecture

* Router
  * `rake routes`
  * Level 1 - we know this.
  * Level 2 - Naming addresses in a more custom way
  * Level 3 - Putting `id`s (or other `params`) in paths
* Different kinds of API auth
  * Gems for accessing APIs
  * Token Auth in params
  * Token Auth in headers
  * Basic Auth (not so good)
  * OAuth - later
* Non-ActiveRecord Models (don't `generate`!)
* Testing Validations - not as important as I let on.

#### Lecture Notes/Links

* [Class Video](https://youtu.be/1LXn5fYWsXU)
* [Example Routes from Class](w4-4/routes.rb)
* [Example Test Mocking from Class](w4-4/game_review_test.rb)

#### Evening Reading

* [Pro Git Ch. 3.3](http://git-scm.com/book/en/v2/Git-Branching-Branch-Management)
* [Pro Git Ch. 3.4](http://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)


## Weekend Assignment - IN PAIRS

[Build Your Own API](https://github.com/tiyd-rails-2015-08/novel_api)
