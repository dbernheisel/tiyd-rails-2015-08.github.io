---
layout: default
---

## Week 6 - Overview

Students should be comfortable with the following at the end of this week:

* The Asset Pipeline
* SCSS
* Session
* Authentication and Authorization
* Nested Attributes


## Important Links

* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Monday - The Asset Pipeline and SCSS

**Challenge:** [ActiveRecord](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_active_record.md)

* Random Topics
  * How to use modules on this assignment!
  * `include` vs. `extend`
  * Marketing yourself
  * Networking at events
  * Self Confidence vs. Arrogance
  * Bragging vs. Marketing
  * Entitlement of the Software Developer Community
  * `Time.zone.now`
  * `config.time_zone = 'Eastern Time (US & Canada)'`
* Agile
  * ON BOARD: Data-first AND workflow-first thinking
  * DIAGRAMS: Data model vs workflow diagrams
* The Asset Pipeline
  * Example: Add photos to someone's Health Tracker
  * The `public` Folder
  * The `vendor` folder
* SCSS
* Bootstrap

#### Lecture Notes/Links

* [Class Video](https://youtu.be/eLjKU24uPeQ)
* [The Asset Pipeline on Heroku](https://devcenter.heroku.com/articles/rails-4-asset-pipeline)
* [Bootstrap](http://getbootstrap.com/)
* [SCSS Guide](http://sass-lang.com/)

#### Evening Reading

* Preview Reading: [How Sessions Work](http://www.justinweiss.com/articles/how-rails-sessions-work/)
* Optional Reading: [Ruby Rogues: Accessibility](https://devchat.tv/ruby-rogues/119-rr-accessibility-with-brian-hogan)

#### Assignment

[Restaurant Menu](https://github.com/tiyd-rails-2015-08/restaurant_menu)

<!--

## Tuesday - Session and Authentication

**Challenge:** [form_for](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_form_for.md)

**Problem of the Day:** [Menu Authentication](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/menu_authentication)

* Human Learning
  * ON BOARD: Study concept over implementation
* Random Topics
  * Bootstrap
  * Accessibility
  * `.ruby-version`
  * Nested Routes
  * Collection/Member Routes
* Session
* Flash
  * `flash` vs. `flash.now`
  * Render vs. Redirect
* Authentication
  * Build our own
  * `has_secure_password`
  * [XKCD on Passwords](https://xkcd.com/936/)

#### Lecture Notes/Links

* [Class Video]()
* [Tota11y](http://khan.github.io/tota11y/)
* [has_secure_password Documentation](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)
* [Why Minitest instead of Rspec](http://brandonhilkert.com/blog/7-reasons-why-im-sticking-with-minitest-and-fixtures-in-rails/)
* [Character Encodings](http://www.joelonsoftware.com/articles/Unicode.html)

#### Evening Reading

* Preview Reading: [Integration Tests](http://guides.rubyonrails.org/testing.html#integration-testing) - Just section 5-5.2
* Optional Reading: [Hiring Apprentices](https://push.cx/2015/hiring-apprentices)
* Optional Reading: [Ruby Rogues: Estimation](http://devchat.tv/ruby-rogues/035-rr-estimation)

#### Assignment

Get started on [Gradebook](https://github.com/tiyd-rails-2015-08/gradebook).  This is a two-night assignment, so in the first night you should at least:

* Build the data structure, models, and migrations that you'll need.
* Allow teachers (and only teachers) to log in and log out.
* Allow teachers (and only teachers) to manage all teachers and all students.
* Allow teachers (and only teachers) to manage grades for all students.

This means that tonight you specifically do NOT have to worry about:

* Entering/managing information about parents.
* Allowing students or parents to log in.
* Limiting teachers to only view and edit their own students and student grades.

Those requirements can be handled tomorrow night.  If you feel like you'll make it to hard or nightmare modes, read those before you start coding and consider taking that future functionality into account in your data structure.


## Wednesday - Authorization and Scope

**Challenge:** [REST](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_rest.md)

* Agile
  * ON BOARD: Start small
  * Example: Building a storefront app
* Random Topics
  * `BCrypt::Password.create("password", cost: 4)`
  * Multi-tenancy
  * Don't set your root to be your login page
* HTTP Response Types
* Access vs. Authentication vs. Authorization
  * Example: Lock Gradebook teachers down to seeing only their classes.
* Authorization Approaches
* Scope
  * `default_scope`
  * `scope`
  * Defining methods on associations
* Integration Tests

#### Lecture Notes/Links

* [Class Video]()

#### Evening Reading

* [`inverse_of`](http://viget.com/extend/exploring-the-inverse-of-option-on-rails-model-associations)
* [Pro Git Ch. 3.5](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches)
* [Pro Git Ch. 3.6](http://git-scm.com/book/en/v2/Git-Branching-Rebasing)

#### Assignment

Complete [Gradebook](https://github.com/tiyd-rails-2015-08/gradebook).


## Thursday - Nested Attributes

**Challenge:** [Partials](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_partials.md)

**Problem of the Day:** [Mass Grade Assignment](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/mass_grade_assignment)

* `accepts_nested_attributes`
* Project kickoff with Front End Engineering
* git
  * Pull request w/ code review workflow

#### Lecture Notes/Links

* [Class Video]()

#### Evening Reading

* [Ruby Rogues: Agile Communication](http://devchat.tv/ruby-rogues/049-rr-agile-communication-with-angela-harms)

## Weekend Assignment - IN PAIRS

[Survey Opossum](https://github.com/tiyd-rails-2015-08/survey_opossum)

Thursday afternoon to Friday morning:

  1. Create an ERD for the data structure needed to accomplish this.
  2. Create a new Rails app with all models and migrations needed for this project.
  3. Scaffold the Survey class.  That's where most of your work will be done.
  4. Make sure that your scaffolded test suite runs.
  5. Deploy to Heroku.  Make sure that you can migrate and load a page (any page) in your browser without errors.

-->
