---
layout: default
---

## Week 3 - Overview

Students should be comfortable with the following at the end of this week:

* Database Basics
* Migrations
* ActiveRecord
* Unit Testing and Efficiency
* Associations
* Consuming APIs


## Important Links

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - Databases and Migrations

**Challenge:** [Methods/If](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/if_challenge.rb)

**Problem of the Day:** [Student Contact Info Redux](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/student_data_structure)

* Human Learning
  * The best time to review is when you first get stale. (Challenges)
  * Extract key ideas.
    * About to dive into databases, and we're not going to dive into one implementation yet.
* Random Topics
  * `%`
* Databases
  * Data Structure Design
  * Entity-Relationship Diagrams (ERDs)
  * Lucidchart
  * Primary and Foreign Keys
  * Join Tables
* Gemfiles
  * Bundler
  * `bundle install`
  * Semantic versioning (e.g. 4.1.5)
  * How Semantic versioning fits in with `public`/`private`
* Migrations
  * Data types
  * `_on` fields
  * `_at` fields
  * `t.timestamps`
  * `t.decimal :amount, precision: 5, scale: 2`
  * Mention `add_column`, etc
* SQLite Browser

#### Lecture Notes/Links

* [Class Video](http://youtu.be/CLC93UtpnGs)
* [Basic Data File Examples](w3-1/data_examples.txt)
* [Compact Fizz Buzz Solution](w3-1/fizzbuzz.rb)
* [Example Gemfile](w3-1/Gemfile)
* [Example Migration File](w3-1/migration.rb)
* [Many-to-Many Spreadsheet](https://docs.google.com/spreadsheets/d/1_FAA0isBFtrdLKobeDV0bTDk1bhAkJNd4fBuRYbPVtY/edit?usp=sharing)
* [SQLite Browser](https://github.com/sqlitebrowser/sqlitebrowser/releases/tag/v3.5.1)

#### Evening Reading

* [Pro Git Ch. 2.3](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History)
* [Pro Git Ch. 2.4](http://git-scm.com/book/en/v2/Git-Basics-Undoing-Things)

#### Assignment

[Time Entry Data Structure](https://github.com/tiyd-rails-2015-05/time_entry_data_structure)


## Tuesday - ActiveRecord and Unit Testing

**Challenge:** [Arrays and Hashes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/array_and_hash_challenge.rb) <!-- WAY TOO HARD - CUT OUT SOME TESTS -->

**Problem of the Day:** [Albums and Artists in a Database](https://github.com/tiyd-rails-2015-05/albums_and_artists_in_db)

* Human Learning
  * Immerse yourself in the culture.
  * Read some every day.
  * Ruby Rogues and Ruby Weekly.
  * Dissecting a book vs drinking from a fire hydrant
  * Diagram: Developer spectrum.  Hammer-user all the way to shiny-object
* Random Topics
  * Migrating up twice
  * `.gitignore` and database files
  * `t.timestamps`
  * `t.references`
* ActiveRecord Models
  * Using `irb` accesses the same database as `ruby ...`
  * `.new`
  * `.save`
  * `.create`
  * `.update`
  * `.all`
  * `.first`
  * `.find` and `.find_by_id`
  * `.find_by_name`
  * `.where`
  * Relations
  * `.order`
  * `.count`
* Associations
  * `has_many`
  * `belongs_to`
* Unit Testing
  * Test database vs development database
  * `def setup` and `def teardown` (for migrations)

#### Lecture Notes/Links

* [Class Video... mostly](http://youtu.be/d0jLwk-nO3w)
* [A Solution to Today's Challenge](w3-2/challenge.rb)
* [Albums and Artists v2](w3-2/albums_and_artists.zip)
* [Ruby Weekly](http://rubyweekly.com/)
* [Ruby Rogues](http://devchat.tv/ruby-rogues/)
* [Most common jobs in america](http://www.npr.org/blogs/money/2015/02/05/382664837/map-the-most-common-job-in-every-state)
* [Another campus' approach to the first database assignment](https://github.com/TIY-DC-ROR-2015-Jan/model-skeleton)

#### Evening Reading

* [Ruby Rogues: Impostor Syndrome](http://devchat.tv/ruby-rogues/107-rr-impostor-syndrome-with-tim-chevalier)

#### Assignment - IN PAIRS, PICK ONE AS STARTING POINT

[Employee Reviews with DB](https://github.com/tiyd-rails-2015-05/employee_reviews_with_db)


## Wednesday - Associations and Validations

**Challenge:** [Classes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/classes_challenge.rb)

**Optional Challenge:** [Palindrome](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/string_palindrome_challenge.rb)

**Problem of the Day:** [Employee and Department Validations](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_validations)

* Human Learning
  * Legacy code
  * Arguably, worked on some last night.
  * Definitely working on some tonight.
* Random Topics
  * Definitely don't commit `.sqlite3` files.
  * Two variables referring to the same record can get out of sync.
  * Efficiency
* Validations
  * `.save!`
  * `.create!`
  * `.update!`
* Associations
  * Calling methods inside a class definition
  * Macros are just methods being called in definitions
  * `dependent: :destroy` and `dependent: :restrict_with_exception`
  * Associations with non-standard foreign_keys
  * `has_many :through` (add `companies` table)
* Git
  * Reason: working with other developers on code
  * `git pull`
  * `git branch`
  * `git merge`

#### Lecture Notes/Links

* [Class Video](http://youtu.be/y18tVhJgz-8)
* [Mini-lecture Video](http://youtu.be/Zxx5993gCfw)
* [First Aid Git](http://ricardofilipe.com/projects/firstaidgit/#/)
* [Funny Names for Ruby Operators](http://ruby-operators.herokuapp.com/)
* [Rails validations](http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates)
* [Getting git branch in your PS1](https://github.com/jimeh/git-aware-prompt)

#### Evening Reading

* [Pro Git Ch. 3.1](http://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
* [Pro Git Ch. 3.2](http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)

#### Assignment - IN PAIRS

[Legacy Associations and Validations](https://github.com/tiyd-rails-2015-05/legacy_associations_and_validations)


## Thursday - The Web and APIs

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
* API without logging in
  * https://api.github.com/users/masonfmatthews/events
* API Keys
  * http://www.wunderground.com/weather/api/
* Keeping keys and passwords out of committed code (using ENV)

#### Lecture Notes/Links

* [Class Video](http://youtu.be/Lv7ydLSbpAs)
* [Challenge Solution](w3-4/vehicle.rb)
* [API Example](w3-4/api.rb)

#### Evening Reading

* [What is an API?](http://skillcrush.com/2012/07/04/api-2/)
* [Working with APIs](http://www.theodinproject.com/ruby-on-rails/working-with-external-apis?ref=lnav) - Read down to and including the "Restrictions" section.


## Friday Mini-lecture

* Mocking
  * User Input
  * API Calls
  * Time-based Results
* `File.open`
* Faker
* Postman
* Human Learning
  * Reading Docs
  * Find out how to call Weather Underground's API with a zip code.

#### Lecture Notes/Links

* [Class Video](http://youtu.be/0Efac8mwih4)
* [Example Mocking Test](w3-5/test.rb)
* [Example Modified Class](w3-5/sun_rise_and_set.rb)
* [Example Saved JSON File](w3-5/astronomy.json)


## Weekend Assignment

* [Weather Report](https://github.com/tiyd-rails-2015-05/weather_report) <!-- TOO EASY -->
