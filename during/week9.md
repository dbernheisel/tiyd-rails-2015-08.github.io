---
layout: default
---

## Week 9 - Overview

Students should be comfortable with the following at the end of this week:

* Development on large teams
* OAuth
* Capybara
* Visualizations with d3.js
* Non-Rails Frameworks

## Important Links

* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)

## Monday - Mailers

**Challenge:** [Javascript (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_javascript.md)

* Agile:
  * ON BOARD: Code review sessions
  * ON BOARD: Consider technical debt
* Random Topics
  * `pluck`
  * Using `pluck` in select_tags
  * `<%= f.select :teacher_id, Teacher.all.map {|t| [t.name , t.id]} %>`
  * `<%= f.collection_select :teacher_id, Teacher.all, :id, :name %>`
* Mailer Steps
  * `rails g mailer MailerNameMailer action_name other_action_name`
  * Modify views and mailers as you see fit
  * Add gmail style config to `environments/development.rb` per http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
  * Somewhere in our code: `MailerNameMailer.other_action_name.deliver_now`
  * `.deliver_later`
  * Example: send yesterday's report instead of displaying it.
* Mailgun

#### Lecture Notes

* [Class Video](https://youtu.be/CMKYj0Jf85M)
* [Bank app code from today](https://github.com/tiyd-rails-2015-08/bank_example)
* [Rails Guides: ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* [Mailgun](http://www.mailgun.com/)

#### Evening Reading

* Preview Reading: [Paperclip Documentation](https://github.com/thoughtbot/paperclip)
* Optional Reading: [Ruby Rogues: Ruby Antipatterns](http://devchat.tv/ruby-rogues/032-rr-ruby-antipatterns)

#### Assignment

* Path One - New Material: [Delayed Mailer](https://github.com/tiyd-rails-2015-08/delayed_mailer)
* Path Two - Review Ruby: [Tic Tac Toe](https://github.com/tiyd-rails-2015-08/overview_tic_tac_toe)
* Path Three - Review Rails: [Time Tracking App](https://github.com/tiyd-rails-2015-08/overview_time_tracking_app)


## Tuesday - File Storage and S3

**Challenge:** [Double Loop Challenge](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/double_loop_challenge.rb)

<!-- **Challenge:** [JQuery (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_jquery.md) -->

* Uploading Files without Paperclip
* Local Files using Paperclip
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
* [Explanation of Amazon Services](https://www.expeditedssl.com/aws-in-plain-english)

#### Evening Reading

* Preview Reading: [d3.js Primer](https://en.wikipedia.org/wiki/D3.js)
* Optional Reading: [Ruby Rogues: Staying Sharp](http://devchat.tv/ruby-rogues/164-rr-staying-sharp-with-dave-thomas)

#### Assignment

* Path One - New Material: [Reports on S3](https://github.com/tiyd-rails-2015-08/delayed_mailer_with_s3)
* Path Two - Review Ruby: [Tic Tac Toe](https://github.com/tiyd-rails-2015-08/overview_tic_tac_toe)
* Path Three - Review Rails: [Time Tracking App](https://github.com/tiyd-rails-2015-08/overview_time_tracking_app)


<!--

## Wednesday - d3.js

**Challenge:** [Discuss Supporting Tech](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_supporting_technologies.md)

**Problem of the Day 1:** Graph `deaths.csv` on an HTML page.  Use CSS as you see fit, but don't use any graphing libraries which you may have learned like c3.

* SVG
  * `line`
  * `circle`
  * `rect`
  * `g` (and `transform="translate(100,100) rotate(0)"`)
* Selectors
  * `d3.select()`
  * `d3.selectAll()`
  * `d3.select(element)`
  * `my_selection.select()`
* Modifying DOM Elements
  * `my_selection.attr("class", "highlighted")`
  * `my_selection.style("color", "red")`
  * `my_selection.classed("house")`
  * `my_selection.classed("house", true/false)`
  * `my_selection.append("circle")`
  * `my_selection.remove()`
* Linear Scales
  * `d3.scale.linear()`
  * `my_scale.domain([lowest_input, highest_input])`
  * `my_scale.range([output_for_lowest, output_for_highest])`
  * `my_scale.interpolate(d3.interpolateHcl)`
* Axes
  * `d3.svg.axis().scale(my_scale).orient("left").ticks(count)` (or `"top"`, `"bottom"`, or `"right"`)
  * `selection.call(my_axis)`
  * `.tickFormat(d3.format("d"))`

**Problem of the Day 2:** Graph points on an x/y plane.  Open `data.csv` and use its "average temperature" column as X and its "number of sunspots" as Y. ([Starting Point](https://github.com/tiyd-rails-2015-08/d3_lesson) - `master` branch)

* Reading from Files
  * `d3.json/csv/xml/html/tsv/text`
  * `d3.json("file.json", function(data) {...})`
* Serving up a folder via a web server:
  * `ruby -run -ehttpd . -p8000`
  * `python -m SimpleHTTPServer 8000` (Python 2) or `python -m http.server 8000` (Python 3)
  * `npm install -g node-static` then `static -p 8000`
* Data Joins
  * `selection.data(data)`
  * `data_join.attr("r", function(data_point) {})`
  * `data_join.attr("r", function(data_point, index) {})`
* Behavior
  * `data_join.on("click", function(data_point, index) {…})`
* Enter/Exit
  * `data_join.enter()`
  * `data_join.exit()`

**Problem of the Day 3:** Add a dropdown to the page which will let you change the Y value of each year to a different column of `data.csv`. ([Starting Point](https://github.com/tiyd-rails-2015-08/d3_lesson) - `lecture2` branch)

* Color Scales
  * `my_scale.interpolate(d3.interpolateHcl)`
* Transitions
  * `selection.transition()`
  * `my_transition.duration(zoomTime)`
* Way 2 to learn D3: work from examples:
  * [Layouts: Chord](http://bl.ocks.org/mbostock/1046712)
  * [Layouts: Tree](http://bl.ocks.org/mbostock/4339083)
  * [Layouts: Pack](http://bl.ocks.org/mbostock/7607535)
  * [Layouts: Sunburst](http://bl.ocks.org/kerryrodden/7090426)
  * [Layouts: Calendar](http://bl.ocks.org/mbostock/4063318)
  * [Physics: Collision Detection](http://bl.ocks.org/mbostock/3231298)
  * [Physics: Force Directed Graph](http://bl.ocks.org/mbostock/4062045)
  * [Visualizations: Paths to the White House](http://www.nytimes.com/interactive/2012/11/02/us/politics/paths-to-the-white-house.html?_r=0)
  * [Visualizations: Strikeouts](http://www.nytimes.com/interactive/2013/03/29/sports/baseball/Strikeouts-Are-Still-Soaring.html?ref=baseball)
  * My examples in Coursyl and Exomemex

#### Lecture Notes/Links

* [Class Video]()

#### Evening Reading

* Preview Reading: [Decompose Fat Models](http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/)
* Preview Reading: [Build an app in Rails vs. Sinatra](https://www.airpair.com/ruby-on-rails/posts/rails-vs-sinatra?utm_source=rubyweekly&utm_medium=email)

#### Assignment

Begin [Ruby Koans](http://rubykoans.com/).

## Thursday - Development Environments, Non-Rails Frameworks

**Challenge:** [Discuss Rails](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_rails.md)

**Challenge:** [Discuss Development](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_development.md)

* Random Topics
  * File generation and opening
  * `method_missing`
* [Things you may be expected to know](https://dgosxlrnzhofi.cloudfront.net/custom_page_images/64/page_images/Rails_Competencies.png)
* DevOps
* Security Review
* OAuth
* Capybara
* SimpleForm
* [Annual Developer Survey from StackOverflow](https://stackoverflow.com/research/developer-survey-2015)
* [Which IDEs do Rubyists use?](http://www.sitepoint.com/ides-rubyists-use/?utm_source=rubyweekly&utm_medium=email)
* [Which editors do Rubyists use?](http://www.sitepoint.com/editor-rubyists-use/)
* [XKCD on editors](http://xkcd.com/378/)
* Dvorak keyboards, ergonomic chairs, treadmill desks, etc.
* [Other ruby frameworks](https://blog.engineyard.com/2015/life-beyond-rails-brief-look-alternate-web-frameworks-ruby).  Links in decreasing order of complexity:
  * Rails
  * [Sinatra](http://www.sinatrarb.com/)
  * [Padrino](http://www.padrinorb.com/)
  * [Camping](http://camping.io/)

#### Lecture Notes/Links

* [Class Video]()
* [So Much Rails to Learn](http://www.justinweiss.com/blog/2015/05/25/with-so-much-rails-to-learn/)
* [oAuth Flow](w9-1/flickr_oauth_flow.jpg)
* [Instructions for Capybara](w9-1/capybara)
* [SimpleForm](https://github.com/plataformatec/simple_form)
* [isitvulnerable.com](https://isitvulnerable.com/)
* [Rack: First Principles](http://rubylogs.com/rack-first-principles/)
* [Rack: Writing Middleware](http://rubylogs.com/writing-rack-middleware/)
* [Rack: Using Middleware in Rails](http://rubylogs.com/writing-rails-middleware/)

#### Assignment

Continue work on [Ruby Koans](http://rubykoans.com/).  Then practice any of the concepts from class that you think will be helpful during your final projects.

## Friday

Pitch Day!

#### Eventual Reading/Listening

* [An Exploration of Memory Usage](http://www.sitepoint.com/ruby-uses-memory/)
* [Ruby Rogues: The Science of Software Development](http://devchat.tv/ruby-rogues/184-rr-what-we-actually-know-about-software-development-and-why-we-believe-it-s-true-with-greg-wilson-and-andreas-stefik)
* [Ruby Rogues: Technology Radar](http://devchat.tv/ruby-rogues/195-rr-building-your-technology-radar-with-neal-ford)
  * [ThoughtWorks Technology Radar](http://www.thoughtworks.com/radar/tools)
* [Coding is Not the New Literacy](http://www.chris-granger.com/2015/01/26/coding-is-not-the-new-literacy/)
* [State of the Developer Nation 2015](http://www.visionmobile.com/product/developer-economics-q1-2015-state-developer-nation/)

-->
