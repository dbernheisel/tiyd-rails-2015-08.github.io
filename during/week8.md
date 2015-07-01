---
layout: default
---

## Week 8 - Overview

Students should be comfortable with the following at the end of this week:

* Working with Legacy Code
* SQL and AREL
* Mailers
* ActiveJob
* File Uploads
* Runtime Optimizations

## Important Links

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - SQL and DB Efficiency

**Challenge:** [Discuss Rails](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_rails.md)

**Problem of the Day:** [Survey Opossum Plus SQL](https://github.com/tiyd-rails-2015-08/survey_opossum_plus_sql)

**Starting Point:** [Survey "Possum"](https://github.com/tiyd-rails-2015-08/survey_possum_example)

* SQL
  * (Alternate between these questions together and PotD questions as student groups)
  * Find all questions
  * Find all yes/no questions (where)
  * Find the names of all yes/no questions (where, select)
  * (First PotD question)
  * Find the three answers which were given most recently (order, limit)
  * (Second PotD question)
  * Find the number of answers for each question_id (group)
  * Find the last time at which a question of each type was created (group)
  * (Third PotD question)
  * Find the most common question type in a particular survey (given a survey_id) (group)
  * (Fourth PotD question)
  * Find all answers accompanied by question texts (join)
  * (Fifth PotD question)
  * Find all authors and their survey names (left join)
  * Find all authors who have never created a survey (left join, check for null)
  * (Sixth PotD question)
  * [XKCD on SQL Injection](https://xkcd.com/327/)
* Indices
  * Massive Seeds
  * Database Indices
  * Double indices

#### Lecture Notes/Links

* [Class Video](http://youtu.be/wugPSTYmNFs)
* [SQL Zoo Tutorials](http://sqlzoo.net/wiki/Main_Page)

#### Evening Reading

* [Joins vs. Includes](http://blog.bigbinary.com/2013/07/01/preload-vs-eager-load-vs-joins-vs-includes.html)
* [SQL to Rails Queries](http://guides.rubyonrails.org/v3.2.13/active_record_querying.html)
* [How to Speed up ActiveRecord](http://blog.codeship.com/speed-up-activerecord/)

#### Assignment

[Database Optimizations](https://github.com/tiyd-rails-2015-08/database_optimizations)


## Tuesday - Mailer and Background Processing

**Challenge:** [Javascript (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_javascript.md)

**Problem of the Day:** Modify last night's application so that an e-mail is sent to mason@example.com whenever a new assembly is created.

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
* Mailers
  * Mailer with a Delay
* Mailer Steps
  * `rails g mailer MailerNameMailer action_name other_action_name`
  * Modify views and mailers as you see fit
  * Add gmail style config to `environments/development.rb` per http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
  * Somewhere in our code: `MailerNameMailer.other_action_name.deliver_now`

#### Lecture Notes/Links

* [Class Video](http://youtu.be/PykjUpp7Vpc)
* [Mini-lecture Video](http://youtu.be/IdrIQMmD4_o)
* [Example from Class and Mini-lecture](https://github.com/tiyd-rails-2015-08/mailer_example)
* [The guy who loves AREL](http://www.youtube.com/watch?v=ShPAxNcLm3o)
* [Rails Guides: ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)
* [DelayedJob](https://github.com/collectiveidea/delayed_job)
* [Rails Guides: ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* [SendGrid](https://addons.heroku.com/sendgrid?utm_campaign=category&utm_medium=dashboard&utm_source=addons)

#### Evening Reading

* [Ruby Rogues: Technical Debt](http://devchat.tv/ruby-rogues/technical-debt)

#### Assignment

[Delayed Mailer](https://github.com/tiyd-rails-2015-08/delayed_mailer)


## Wednesday - Review

**Challenge:** [JQuery (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_jquery.md)

* Review topics:
  * jQuery
  * `has_many :through`
  * SQL Joins
  * Polymorphic associations
* Transactions
* Runtimes and Primes
* Computational Complexity (`O(n)`, `O(lg n)`, `O(n^2)`, etc)

#### Lecture Notes/Links

* [Class Video](https://www.youtube.com/watch?v=_IQVSPCQUkU)
* [JavaScript from Challenge](w8-3/application.js)
* [Mailer code from Homework Review](w8-3/report_mailer.rb)
* [Model code from Homework Review](w8-3/assembly.rb)
* [Ugly (but very fast) Primes Code](w8-3/primes.rb)

#### Evening Reading

* [Ruby Rogues: Technology Radar](http://devchat.tv/ruby-rogues/195-rr-building-your-technology-radar-with-neal-ford)
* [ThoughtWorks Technology Radar](http://www.thoughtworks.com/radar/tools)

#### Assignment

Start [Ruby Koans](http://rubykoans.com/).


## Thursday - File Storage and S3

**Challenge:** [Double Loop Challenge](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/double_loop_challenge.rb)

**Problem of the Day:** Allow user to upload a file when each new assembly is created.

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

* [Class Video](http://youtu.be/LnnhyeiHHFI)
* [A Challenge Answer](w8-4/complements.rb)
* [Potato App with File Storage](https://github.com/tiyd-rails-2015-08/mailer_example)
* [Paperclip](https://github.com/thoughtbot/paperclip)
* [Paperclip and S3 on Heroku](https://devcenter.heroku.com/articles/paperclip-s3)
* [List of common media types](http://en.wikipedia.org/wiki/Internet_media_type#List_of_common_media_types)

#### Evening Reading

* [Ruby Rogues: Ruby Antipatterns](http://devchat.tv/ruby-rogues/032-rr-ruby-antipatterns)

## Weekend Assignment

[Gradebook Tickets](https://github.com/tiyd-rails-2015-08/gradebook_tickets)
