---
layout: default
---

## Week 8 - Overview

Students should be comfortable with the following at the end of this week:

* Indices and Runtime Optimizations
* Mailers
* Background Processing
* File Uploads and S3

## Important Links

* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Monday - SQL and Efficiency

**Challenge:** [Primes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/hard_primes_challenge.rb)

* Human Learning:
  * ON BOARD: Use short feedback loops
  * Wife and dinner example
  * Let's use them here as we work on primes.
* Runtimes and Primes
* Computational Complexity (`O(n)`, `O(lg n)`, `O(n^2)`, etc)
* Memory Usage
* Indices
  * Example: Build Plutonium Yard app with campuses, courses, and students.
  * Massive Seeds
  * Database Indices
  * Double indices
* Transactions
* Single-field search bar queries (ala Google)?
* AREL?
* memcached

#### Lecture Notes/Links

* [Class Video]()
* [The guy who loves AREL](http://www.youtube.com/watch?v=ShPAxNcLm3o)
* [Porting Validations to PostgreSQL](http://shuber.io/porting-activerecord-validations-to-postgres/)
* [The complete guide to Rails caching](http://www.nateberkopec.com/2015/07/15/the-complete-guide-to-rails-caching.html)

#### Evening Reading

* [Joins vs. Includes](http://blog.bigbinary.com/2013/07/01/preload-vs-eager-load-vs-joins-vs-includes.html)
* [How to Speed up ActiveRecord](http://blog.codeship.com/speed-up-activerecord/)

#### Assignment

[Database Optimizations](https://github.com/tiyd-rails-2015-08/database_optimizations)


## Tuesday - All Things Open Conference


## Wednesday - Background Processing

**Challenge:** [Double Loop Challenge](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/double_loop_challenge.rb)

* Agile:
  * ON BOARD: Consider technical debt
* Random Topics
  * `.joins`
  * Polymorphic associations
  * AREL: `to_dos = ToDo.arel_table` followed by `where(to_dos[:title].matches("%#{search}%").or(to_dos[:title].matches("ALWAYS")))`
  * Swap space
* Background Processing
  * Example: Plutonium Yard Report Generation
  * Review stacks vs. queues
  * Queues in a Database Table
  * DelayedJob
  * ActiveJob
* Background Processing Steps  
  * Add gems `delayed_job_active_record` & `daemons`
  * `bundle install`
  * In config/application.rb:
    * `config.active_job.queue_adapter = :delayed_job`
    * `config.autoload_paths << Rails.root.join('app/jobs')`
  * `rails generate delayed_job:active_record`
  * `rake db:migrate`
  * `bin/delayed_job start`
  * `rails generate job JobName`
  * Somewhere in our code: `JobName.perform_later(params[:something_important])`
  * When you are done coding: `bin/delayed_job stop`
* Files
  * Files as part of HTML forms
  * File reading and writing

#### Lecture Notes/Links

* [Class Video]()
* [Rails Guides: ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)
* [DelayedJob](https://github.com/collectiveidea/delayed_job)

#### Evening Reading

* [Ruby Rogues: Technical Debt](http://devchat.tv/ruby-rogues/technical-debt)
* [Toyota and Technical Debt](http://www.safetyresearch.net/blog/articles/toyota-unintended-acceleration-and-big-bowl-%E2%80%9Cspaghetti%E2%80%9D-code)

#### Assignment

[Data File Import](https://github.com/tiyd-rails-2015-08/data_file_import)


## Thursday - Mailers

**Challenge:** [Javascript (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_javascript.md)

* Agile:
  * ON BOARD: Code review sessions
* Review topics:
  * `has_many :through`
  * SQL Joins
  * Polymorphic associations
* Mailer Steps
  * Example: new student email
  * `rails g mailer MailerNameMailer action_name other_action_name`
  * Modify views and mailers as you see fit
  * Add gmail style config to `environments/development.rb` per http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
  * Somewhere in our code: `MailerNameMailer.other_action_name.deliver_now`
* `.deliver_now`
  * Example: send yesterday's report instead of displaying it.

#### Lecture Notes/Links

* [Class Video]()
* [Rails Guides: ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* [Mailgun](http://www.mailgun.com/)
* [SendGrid](https://addons.heroku.com/sendgrid?utm_campaign=category&utm_medium=dashboard&utm_source=addons)

#### Evening Reading

* [Ruby Rogues: Code Review Culture](http://devchat.tv/ruby-rogues/216-rr-code-review-culture-with-derek-prior)


## Weekend Assignment

[Gradebook Tickets](https://github.com/tiyd-rails-2015-08/gradebook_tickets)
