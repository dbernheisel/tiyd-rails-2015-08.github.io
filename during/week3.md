---
layout: default
---

## Week 3 - Overview

Students should be comfortable with the following at the end of this week:

* Database Basics
* Migrations
* SQL
* ActiveRecord
* Associations and Validations


## Important Links

* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Monday - Databases and Migrations

**Challenge:** [FizzBuzz](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/if_challenge.rb)

**Problem of the Day:** [Student Data Structure](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/phone_numbers_data_structure)

* Human Learning
  * ON BOARD: Review when memory is stale
* Files as permanent storage
  * `File.open`
  * `CSV.open`
* Databases
  * Data Structure Design (based on POD)
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

* [Class Video](https://youtu.be/DogVKzWYzwo)
* [Address Book Data Structure in Google Spreadsheet](https://docs.google.com/spreadsheets/d/1kM4Lk0eyoQg-v3K2DBmT8nOyC1Rf4EfFhRvcaLAP7Pw/edit?usp=sharing)
* Extra Database Exercise: [Albums and Artists in a Database](https://github.com/masonfmatthews/rails_assignments/blob/master/unused/exercises/albums_and_artists_in_db)
* [SQLite Browser](https://github.com/sqlitebrowser/sqlitebrowser/releases/tag/v3.5.1)

#### Evening Reading

* Required Git Reading: [Pro Git Ch. 2.3](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History)
* Required Git Reading: [Pro Git Ch. 2.4](http://git-scm.com/book/en/v2/Git-Basics-Undoing-Things)
* Preview Reading: [Try SQL](https://www.codeschool.com/courses/try-sql)

#### Assignment

[Time Entry Data Structure](https://github.com/tiyd-rails-2015-08/time_entry_data_structure)

<!--

## Tuesday - SQL

**Challenge:** [String Split](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/string_split_challenge.rb)

**Problem of the Day:** [Phone Numbers SQL](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/phone_numbers_sql)

* Agile
  * Immerse yourself in the culture.
  * Read some every day.
  * Ruby Rogues and Ruby Weekly.
  * Dissecting a book vs drinking from a fire hydrant
  * DIAGRAM: Developer spectrum.  Hammer-user all the way to shiny-object
  * ON BOARD: Hammer-user vs. shiny-object
* Random Topics
  * Migrations
  * SQL Query Browser
  * Migrating up twice
  * `.gitignore` and database files
  * `t.timestamps`
  * `t.references`
* SQL
  * (Alternate between these questions together and PotD questions as student groups)
  * Find all people
  * Find all people with a last name of "Smith" (where)
  * Find the first names of people with a last name of "Matthews" (where, select)
  * (First PotD question)
  * Find the three people who were entered most recently (order, limit)
  * (Second PotD question)
  * Find the number of people who have each last name (group)
  * Find the last time at which a person with each last name was created (group, max)
  * (Third PotD question)
  * OPTIONAL: Find the most common first name for people with the last name of "Smith" (group, where)
  * OPTIONAL: (Fourth PotD question)
  * Find all email addresses, and show their owners' names with them (join)
  * (Fifth PotD question)
  * Find all people, and include all of their email addresses if they have them (left join)
  * Find all people with no e-mail addresses (left join, check for null)
  * (Sixth PotD question)
* Quick mention of ActiveRecord Methods which map to SQL clauses
* Query for Google-like search bar?

#### Lecture Notes

* [Class Video]()
* [Try SQL](https://www.codeschool.com/courses/try-sql)
* [SQL Zoo Tutorials](http://sqlzoo.net/wiki/Main_Page)

#### Evening Reading

* Preview Reading: [Database Objects in Ruby](https://quickleft.com/blog/introduction-to-database-design-on-rails-part-ii/)
* Optional Reading: [Ruby Rogues: Impostor Syndrome](http://devchat.tv/ruby-rogues/107-rr-impostor-syndrome-with-tim-chevalier)

#### Assignment

[Time Entry SQL Practice](https://github.com/tiyd-rails-2015-08/time_entry_sql_practice)


## Wednesday - ActiveRecord and Unit Testing

**Challenge:** [Arrays and Hashes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/array_and_hash_challenge.rb) (this builds on yesterday's challenge, so bring that code up and use it!)

**Problem of the Day:** [Phone Numbers Active Record](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/phone_numbers_active_record)

* Agile
  * ON BOARD: All code becomes legacy code.
  * Arguably, working on some tonight.
  * Definitely working on some this weekend.
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
* Relations
  * `.where`
  * `.order`
  * `.count`
  * [XKCD on SQL Injection](https://xkcd.com/327/)
* Basic Associations
  * `has_many`
  * `belongs_to`
* Unit Testing
  * Test database vs development database
  * `def setup` and `def teardown` (for migrations)

#### Lecture Notes/Links

* [Class Video]()
* [Ruby Weekly](http://rubyweekly.com/)
* [Ruby Rogues](http://devchat.tv/ruby-rogues/)
* [Most common jobs in america](http://www.npr.org/blogs/money/2015/02/05/382664837/map-the-most-common-job-in-every-state)

#### Evening Reading

* [SQL to Rails Queries](http://guides.rubyonrails.org/v3.2.13/active_record_querying.html)
* [Pro Git Ch. 3.1](http://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
* [Pro Git Ch. 3.2](http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)

#### Assignment - IN PAIRS, PICK ONE AS STARTING POINT

[Employee Reviews with DB](https://github.com/tiyd-rails-2015-08/employee_reviews_with_db)


## Thursday - Associations and Validations

**Challenge:** [Classes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/classes_challenge.rb)

**Optional Challenge:** [Palindrome](https://github.com/masonfmatthews/rails_assignments/blob/master/unused/challenges/string_palindrome_challenge.rb)

**Problem of the Day:** [Employee and Department Validations](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_validations)

* Random Topics
  * Definitely don't commit `.sqlite3` files.
  * Two variables referring to the same record can get out of sync.
  * Efficiency
* Validations
  * Example: [Employee and Department Validations](https://github.com/masonfmatthews/rails_assignments/blob/master/unused/exercises/employee_and_department_validations)
  * `.save!`
  * `.create!`
  * `.update!`
* Associations
  * Calling methods inside a class definition
  * Macros are just methods being called in definitions
  * `dependent: :destroy` and `dependent: :restrict_with_exception`
  * Associations with non-standard foreign_keys
  * `has_many :through` (add `companies` table)
* Faker
* Git
  * Reason: working with other developers on code
  * `git pull`
  * `git branch`
  * `git merge`
  * `git stash`

#### Lecture Notes/Links

* [Class Video]()
* [First Aid Git](http://ricardofilipe.com/projects/firstaidgit/#/)
* [Funny Names for Ruby Operators](http://ruby-operators.herokuapp.com/)
* [Rails validations](http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates)
* [Getting git branch in your PS1](https://github.com/jimeh/git-aware-prompt)

#### Evening Reading

* [What is an API?](http://skillcrush.com/2012/07/04/api-2/)
* [Working with APIs](http://www.theodinproject.com/ruby-on-rails/working-with-external-apis?ref=lnav) - Read down to and including the "Restrictions" section.

## Weekend Assignment - IN PAIRS

[Legacy Associations and Validations](https://github.com/tiyd-rails-2015-08/legacy_associations_and_validations)

-->
