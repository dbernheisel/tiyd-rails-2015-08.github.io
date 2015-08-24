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

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)

## Monday - Gradebook Tickets Lab Time

* Mini-lecture
* Ad hoc discussions and review with Mason.

#### Assignment

Complete [Gradebook Tickets](https://github.com/tiyd-rails-2015-08/gradebook_tickets)

#### Evening Reading

* [Ruby Rogues: Staying Sharp](http://devchat.tv/ruby-rogues/164-rr-staying-sharp-with-dave-thomas)

## Tuesday - oAuth and DevOps

**Challenge:** [Discuss Rails](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_rails.md)

* [Things you may be expected to know](https://dgosxlrnzhofi.cloudfront.net/custom_page_images/64/page_images/Rails_Competencies.png)
* DevOps
* Security Review
* OAuth
* Capybara
* SimpleForm

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

#### Evening Reading

* [An Exploration of Memory Usage](http://www.sitepoint.com/ruby-uses-memory/)
* [Decompose Fat Models](http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/)

#### Assignment

Work on [Ruby Koans](http://rubykoans.com/).


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

* [Build an app in Rails vs. Sinatra](https://www.airpair.com/ruby-on-rails/posts/rails-vs-sinatra?utm_source=rubyweekly&utm_medium=email)

#### Assignment

[Add D3 to Novel API](https://github.com/tiyd-rails-2015-08/add_d3)

OR

[Reports on S3](https://github.com/tiyd-rails-2015-08/reports_on_s3)

## Thursday - Development Environments, Non-Rails Frameworks

**Challenge:** [Discuss Development](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_development.md)

* Random Topics
  * File generation and opening
  * `method_missing`
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

#### Assignment

If you haven't done it already, complete [Ruby Koans](http://rubykoans.com/).  Then practice any of the concepts from class that you think will be helpful during your final projects.

## Friday

Pitch Day!

#### Eventual Reading/Listening

* [Ruby Rogues: The Science of Software Development](http://devchat.tv/ruby-rogues/184-rr-what-we-actually-know-about-software-development-and-why-we-believe-it-s-true-with-greg-wilson-and-andreas-stefik)
* [Ruby Rogues: Technology Radar](http://devchat.tv/ruby-rogues/195-rr-building-your-technology-radar-with-neal-ford)
  * [ThoughtWorks Technology Radar](http://www.thoughtworks.com/radar/tools)
* [Coding is Not the New Literacy](http://www.chris-granger.com/2015/01/26/coding-is-not-the-new-literacy/)
* [State of the Developer Nation 2015](http://www.visionmobile.com/product/developer-economics-q1-2015-state-developer-nation/)
