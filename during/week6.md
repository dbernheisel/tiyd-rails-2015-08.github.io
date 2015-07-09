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

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - The Asset Pipeline and SCSS

**Challenge:** [ActiveRecord](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_active_record.md)

* Random Topics
  * How to use modules on this assignment!
  * `include` vs. `extend`
* Human Learning
  * Data 1st vs. Behavior 1st (Thinking in Nouns vs. Verbs)
  * Diagrams: Data model vs workflow diagrams
* Workflow Diagrams
* Example: Add photos to someone's Health Tracker
* The `public` Folder
* The Asset Pipeline
* The `vendor` folder
* SCSS
* Bootstrap

#### Lecture Notes/Links

* [Class Video]()
* [The Asset Pipeline on Heroku](https://devcenter.heroku.com/articles/rails-4-asset-pipeline)
* [SCSS Guide](http://sass-lang.com/)

#### Evening Reading

* [Ruby Rogues: Marketing Yourself](http://devchat.tv/ruby-rogues/187-marketing-yourself-as-a-software-developer-with-john-sonmez)

#### Assignment

[Restaurant Menu](https://github.com/tiyd-rails-2015-08/restaurant_menu)


## Tuesday - Session and Authentication

**Challenge:** [form_for](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_form_for.md)

**Problem of the Day:** [Menu Authentication](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/menu_authentication)

* Random Topics
  * `.ruby-version`
  * Nested Routes
  * Collection/Member Routes
  * `Time.zone.now.today?`
  * `config.time_zone = 'Eastern Time (US & Canada)'`
* Human Learning
  * Networking
  * Self Confidence vs. Arrogance
  * Bragging vs. Marketing
  * Entitlement of the Software Developer Community
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
* [has_secure_password Documentation](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)
* [Why Minitest instead of Rspec](http://brandonhilkert.com/blog/7-reasons-why-im-sticking-with-minitest-and-fixtures-in-rails/)

#### Evening Reading

* [Hiring Apprentices](https://push.cx/2015/hiring-apprentices)

#### Assignment

Get Started on [Gradebook](https://github.com/tiyd-rails-2015-08/gradebook)

* Let teachers log in
* Let them see and access any page, AFTER they've logged in.
* ... TODO: ADD MORE


## Wednesday - Authorization and Scope

**Challenge:** [REST](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_rest.md)

* Random Topics
  * `BCrypt::Password.create("password", cost: 4)`
  * Multi-tenancy
  * Don't set your root to be your login page
* HTTP Response Types
* Integration Tests
* Access vs. Authentication vs. Authorization
  * Example: Lock Gradebook teachers down to seeing only their classes.
* Authorization Approaches
* Scope
  * `default_scope`
  * `scope`
  * Defining methods on associations

#### Lecture Notes/Links

* [Class Video]()

#### Evening Reading

* [Ruby Rogues: Agile Communication](http://devchat.tv/ruby-rogues/049-rr-agile-communication-with-angela-harms)

#### Assignment

[Gradebook](https://github.com/tiyd-rails-2015-08/gradebook)


## Thursday - Nested Attributes

**Challenge:** [Partials](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_partials.md)

**Problem of the Day:** [Mass Grade Assignment](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/mass_grade_assignment)

* `accepts_nested_attributes`
* Project kickoff with Front End Engineering

#### Lecture Notes/Links

* [Class Video]()

#### Evening Reading

* [Pro Git Ch. 3.5](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches)
* [Pro Git Ch. 3.6](http://git-scm.com/book/en/v2/Git-Branching-Rebasing)
* [`inverse_of`](http://viget.com/extend/exploring-the-inverse-of-option-on-rails-model-associations)

## Weekend Assignment - IN PAIRS

[Survey Opossum](https://github.com/tiyd-rails-2015-08/survey_opossum)

Thursday afternoon to Friday morning:

  1. Create an ERD for the data structure needed to accomplish this.
  2. Create a new Rails app with all models and migrations needed for this project.
  3. Scaffold the Survey class.  That's where most of your work will be done.
  4. Make sure that your scaffolded test suite runs.
  5. Deploy to Heroku.  Make sure that you can migrate and load a page (any page) in your browser without errors.
