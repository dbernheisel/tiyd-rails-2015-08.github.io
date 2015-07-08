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

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - SQL and Efficiency

**Challenge:** [Primes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/hard_primes_challenge.rb)

* Indices
  * Massive Seeds
  * Database Indices
  * Double indices
* Transactions
* Runtimes and Primes
* Computational Complexity (`O(n)`, `O(lg n)`, `O(n^2)`, etc)
* Memory Usage
* AREL?

#### Lecture Notes/Links

* [Class Video]()
* [The guy who loves AREL](http://www.youtube.com/watch?v=ShPAxNcLm3o)

#### Evening Reading

* [Joins vs. Includes](http://blog.bigbinary.com/2013/07/01/preload-vs-eager-load-vs-joins-vs-includes.html)
* [SQL to Rails Queries](http://guides.rubyonrails.org/v3.2.13/active_record_querying.html)
* [How to Speed up ActiveRecord](http://blog.codeship.com/speed-up-activerecord/)

#### Assignment

[Database Optimizations](https://github.com/tiyd-rails-2015-08/database_optimizations)


## Tuesday - Background Processing

**Challenge:** [Double Loop Challenge](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/double_loop_challenge.rb)

* Random Topics
  * `.joins`
  * Polymorphic associations
  * AREL: `to_dos = ToDo.arel_table` followed by `where(to_dos[:title].matches("%#{search}%").or(to_dos[:title].matches("ALWAYS")))`
  * Swap space
* Background Processing
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

#### Lecture Notes/Links

* [Class Video]()
* [Rails Guides: ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)
* [DelayedJob](https://github.com/collectiveidea/delayed_job)

#### Evening Reading

* [Ruby Rogues: Technical Debt](http://devchat.tv/ruby-rogues/technical-debt)

#### Assignment

[Delayed Mailer](https://github.com/tiyd-rails-2015-08/delayed_mailer)


## Wednesday - Mailers

**Challenge:** [Javascript (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_javascript.md)

* Review topics:
  * jQuery
  * `has_many :through`
  * SQL Joins
  * Polymorphic associations
* Mailers
  * Mailer with a Delay
* Mailer Steps
  * `rails g mailer MailerNameMailer action_name other_action_name`
  * Modify views and mailers as you see fit
  * Add gmail style config to `environments/development.rb` per http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
  * Somewhere in our code: `MailerNameMailer.other_action_name.deliver_now`

#### Lecture Notes/Links

* [Class Video]()
* [Rails Guides: ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* [SendGrid](https://addons.heroku.com/sendgrid?utm_campaign=category&utm_medium=dashboard&utm_source=addons)

#### Evening Reading

* [Ruby Rogues: Technology Radar](http://devchat.tv/ruby-rogues/195-rr-building-your-technology-radar-with-neal-ford)
* [ThoughtWorks Technology Radar](http://www.thoughtworks.com/radar/tools)

#### Assignment

Start [Ruby Koans](http://rubykoans.com/).


## Thursday - File Storage and S3

**Challenge:** [JQuery (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_jquery.md)

* Local Files
  * Files as part of HTML forms
  * File reading and writing
  * Paperclip
* Bundler
  * `~>` operator
* Steps to Make Local Files Work
  * `form_tag html: { multipart: true } do |f|`
  * `file_field_tag :uploaded_file`
  * `gem "paperclip", "~> 4.2"`
  * In Migration: `add_attachment :table, :uploaded_file`
  * In model: `has_attached_file :uploaded_file`
  * In model: `validates_attachment_content_type :uploaded_file, :content_type => /\Atext\/.*\Z/`
  * `form_for @object, html: { multipart: true } do |f|`
  * `f.file_field :uploaded_file`
  * Strong Params
* Cloud Files
  * Amazon S3
  * `render_to_string(action: :index, layout: "report")`
* Steps to Make Cloud Files Work
  * `gem 'aws-sdk', '~> 1.6'`

Code for `config/application.rb`:

    config.paperclip_defaults = {
      :storage => :s3,
      :s3_credentials => {
        :bucket => ENV['S3_BUCKET_NAME'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }
    }

#### Lecture Notes/Links

* [Class Video]()
* [Paperclip](https://github.com/thoughtbot/paperclip)
* [Paperclip and S3 on Heroku](https://devcenter.heroku.com/articles/paperclip-s3)
* [List of common media types](http://en.wikipedia.org/wiki/Internet_media_type#List_of_common_media_types)

#### Evening Reading

* [Ruby Rogues: Ruby Antipatterns](http://devchat.tv/ruby-rogues/032-rr-ruby-antipatterns)

## Weekend Assignment

[Gradebook Tickets](https://github.com/tiyd-rails-2015-08/gradebook_tickets)
