---
layout: default
---

## Week 5 - Overview

Students should be comfortable with the following at the end of this week:

* HTML and CSS
* HTML Forms
* Rails Views
* REST
* Heroku


## Important Links

* [Challenge Submission Form](http://goo.gl/forms/OzzXZL6iEF)
* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - HTML and CSS

**Challenge:** [Discuss Ruby](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_ruby.md)

**Problem of the Day:** [My First Website](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/my_first_website)

* Example: The Plutonium Yard, competitor to the Iron Yard
* HTML
  * View source on `theironyard.com`
  * Tags and Nesting
  * Header and Body
  * Common tags
    * `h1` - `h6`
    * `p`
    * `a`
    * `div`
    * `span`
    * `ul`, `li`, `ol`
    * `table`, etc
    * `image`
    * Embedding content
  * Possible conflicts/inconsistent HTML
    * [XKCD on Tags](https://xkcd.com/1144/)
  * Attributes
    * `href`
    * `src`
* CSS
  * Three places to add style to HTML
    * Putting it in `style=` attributes - thumbs down.
    * Inside `<style>` tags - thumbs mostly down.
    * In separate files - thumbs up!
  * Basic Selectors
    * `id` and `class` attributes
    * `li {}` to select everything in all `li`s
    * `div li {}` to select every `li` inside a `div`
    * `li, p {}` to select everything in all `li`s and `p`s
    * `#id` to select the element with an `id` of "id"
    * `.class` to select everything with a `class` of "class"
    * `li.class` to select every `li` with a `class` of "class"
  * Properties and values
    * `color:`
    * `border:`
    * `width:`
  * Crazy stuff
    * `box-shadow`
    * `transform`
  * Pseudo-selectors

#### Lecture Notes/Links

* [Class Video]()
* [Codepen](http://codepen.io)

Websites that are "static":

* [Headhunter Hair Styling](http://www.headhunterhairstyling.com/)
* [Do Nothing for 2 Minutes](http://www.donothingfor2minutes.com/)
* [Find the Invisible Cow](http://findtheinvisiblecow.com/)
* [WeaveSilk](http://weavesilk.com/)

Webapps that do processing on the server (and/or have a database):

* [Is it Christmas](http://isitchristmas.com)
* [How many people are in space right now](http://howmanypeopleareinspacerightnow.com)
* [Ship Your Enemies Glitter](http://shipyourenemiesglitter.com/)
* [Akinator](http://en.akinator.com/)

Helpful Links:

* [Class Video]()
* w3schools results are only okay.
* [MDN](https://developer.mozilla.org/en-US/) results are the best.
* [Google Trends](https://trends.google.com)
* [Palette Tool](http://paletton.com/#uid=13P0u0kllll70vXeaqEswg1G0aI)
* [Meet the Ipsums](http://meettheipsums.com)
* [Durham Ipsum](http://durhamipsum.com)

#### Evening Reading

* [Ruby Rogues: Hacking Education](http://devchat.tv/ruby-rogues/159-rr-hacking-education-with-saron-yitbarek)

#### Assignment

[CSS Reverse Engineering](https://github.com/tiyd-rails-2015-08/css_reverse_engineering)


## Tuesday - Rails Views and Forms

**Challenge:** [Discuss HTTP](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_http.md)

**Problem of the Day:** [Using ERB](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/my_first_erb)

* Agile
  * How did it feel to have to match GitHub's pages exactly?
  * Baby Duck Syndrome
  * [XKCD on Breaking Someone's Workflow](https://xkcd.com/1172/)
* Random Topics
  * `rails new .`
  * Explore Rails' `.gitignore`
* Forms
  * Example: Add a student application form to the Plutonium Yard
  * `form`
  * `input` (all sorts)
  * `select`
  * `button`
  * `checkbox`
  * Rails helpers for making `form_tag` elements
* View Intro without models
  * Example: A rails app that asks me for my time zone, then gives me the time.
  * ERB
  * `strftime()`
* Mini-lecture:
  * OAuth Token auth with GitHub

#### Lecture Notes/Links

* [Class Video]()
* [`strftime()`](http://strftime.net/)
* [ALL the Rails View Helpers](http://api.rubyonrails.org/classes/ActionView/Helpers.html)

#### Evening Reading

* [Pro Git Ch. 7.7](http://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified) - This is maybe the best chapter in the book.
* [Pro Git Ch. 7.6](http://git-scm.com/book/en/v2/Git-Tools-Rewriting-History)

#### Assignment

[Recreate GitHub Profile](https://github.com/tiyd-rails-2015-08/github_profile)


## Wednesday - REST, Scaffold

**Challenge:** [Router](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_router.md)

* Starting Point: [Tabula Railsa](https://github.com/tiyd-rails-2015-08/tabula_railsa)

**Problem of the Day:** [Albums Resource](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/albums_resource)

* Random Topics
  * The "10 minutes ago" problem
  * `rails-footnotes` gem
  * `find` vs `find_by_id`
* Scaffold
  * Remove `jbuilder` from Gemfile if you don't want an API.
* `form_for` and related methods
* Resources
* REST

#### Lecture Notes/Links

* [Class Video]()
* [Rails Footnotes](https://github.com/josevalim/rails-footnotes) - `rails generate rails_footnotes:install`
* [Rails Guides for Form Helpers](http://guides.rubyonrails.org/form_helpers.html)

#### Evening Reading

* [Ruby Rogues: Estimation](http://devchat.tv/ruby-rogues/035-rr-estimation)

#### Assignment

[Wallet](https://github.com/tiyd-rails-2015-08/wallet)


## Thursday - Helpers/Partials, Heroku/Production

**Challenge:** [Rails Environments](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_environments.md)

* Rails Servers (WEBrick vs. Mongrel vs. Puma)
* Example: [Wallet Helpers and Partials](https://github.com/tiyd-rails-2015-08/helpers_and_partials) - `transactions/index.html.erb`
* Partials
* Helpers
  * `.html_safe`
  * XSS
* Dev vs. Test vs. Production
* Heroku
  * `git remote` review
  * Set up account
  * Create new Heroku project
  * Move `sqlite3` gem to development and test
  * Add `pg` and `rails_12factor` gems to production
  * Add `puma` gem to base of Gemfile
  * Create Procfile which says `web: bundle exec puma -C config/puma.rb`
  * Create `config/puma.rb` per [Heroku's instructions](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)
  * `bundle install --without production`
  * `heroku git:remote -a damp-peak-9050`
  * `git push heroku master`
  * `heroku run rake db:migrate`
  * `heroku run rake db:seed`

#### Lecture Notes/Links

* [Class Video]()
* [Rails helpers tutorial](http://mixandgo.com/blog/the-beginner-s-guide-to-rails-helpers?utm_source=rubyweekly&utm_medium=email)
* [Heroku docs on installing Rails 4 apps](https://devcenter.heroku.com/articles/rails4)
* [Heroku docs on setting up Puma](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)

#### Evening Reading

* [Ruby Rogues: When to Use Modules](http://devchat.tv/ruby-rogues/022-rr-when-to-use-modules)

## Weekend Assignment - IN PAIRS

[Health Tracker](https://github.com/tiyd-rails-2015-08/health_tracker)
