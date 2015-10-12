---
layout: default
---

## Week 7 - Overview

Students should be comfortable with the following at the end of this week:

* JavaScript
* jQuery
* Unobtrusive JavaScript
* AJAX


## Important Links

* [Tabula Railsa](https://github.com/tiyd-rails-2015-08/tabula_railsa)
* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Monday - JavaScript

**Challenge:** [Helpers](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_helpers.md)

* Starting Point: [Tabula Railsa](https://github.com/tiyd-rails-2015-08/tabula_railsa)

* Agile
  * ON BOARD: Style matters early (sadly)
* Random Topics
  * `config.action_controller.action_on_unpermitted_parameters = :raise`
* Javascript
  * Surprisingly similar to ruby
  * `var` keyword
  * `do..end` vs `{}`
  * `==` vs `===`
    * `1 == "1"`
    * `[1, 2, 3] === [1, 2, 3]`... sigh
  * methods vs functions
  * implicit vs explicit return
  * Weird returns (`a++`)
  * hashes vs "objects"
  * numbers
  * `else if`
  * capitalization in variable names
* Functions
  * First, define them as we would in Ruby: `function sayHi() { alert("Hi"); }`
  * Can be stored in variables
  * `[1, 2, 3].forEach(function (number) { console.log(number * number); });`

    <!-- function greet(greeting) {
      return function() {
        return greeting + " world!";
      };
    }
    var hello = greet("Hello");
    var goodbye = greet("Goodbye");
    hello(); // Hello world!
    goodbye(); // Goodbye world! -->

* JS in the Console
  * Alert
  * Log
  * `document.getElementById()`
  * `document.getElementsByClassName()`
  * '.value'
  * '.style....'
  * `.lastElementChild` - it's sometimes tough to know what's a function and what's just a value!
  * `.cloneNode(true)`
  * `.appendChild(copy)`
* JS in:
  * in HTML tags
  * in Rails files
* JS in Rails - `javascript_playground` repository
  * Setting the value of an input field
  * Hiding or showing section based on a radio button
  * Copying something on the page

#### Lecture Notes/Links

* [Class Video](https://youtu.be/ByI5Wtl0YNw)
* [Mini-lecture Video](https://youtu.be/XdBCf74xzxQ)
* [Example playground code](https://github.com/tiyd-rails-2015-08/javascript_playground)

#### Evening Reading

* Preview Reading: [How jQuery Works](http://learn.jquery.com/about-jquery/how-jquery-works/)
* Optional (excellent) Reading: Chapters 5 and 12 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment

* [Add Javascript](https://github.com/tiyd-rails-2015-08/add_javascript)
  * [Starting Point](https://github.com/tiyd-rails-2015-08/coursyl)

<!--

## Tuesday - jQuery

**Challenge:** [Session](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_session.md)

* Human Learning
  * [Autonomy/Mastery/Purpose](https://www.youtube.com/watch?v=u6XAPnuFjJc)
  * [12 Questions](w7-3/12questions.pdf)
* More JavaScript
  * Load order
  * Javascript in script tags
  * Script tags at the bottom of the page
  * `javascript:void(0)`
  * `addEventListener()`
  * `event.target`
* Declarative Style of Programming
* JQuery
  * `$("selector")`
  * `$(event.target)`
  * `$(function())`
  * `.attr()`
  * `.css()`
  * `.prop()` - for disabled and checked
  * `.val()`
  * Getters and setters are not different methods like Ruby.  You add one parameter to a getter method and it becomes a setter method.
  * `.closest()` - closest ancestor
  * `.filter()` - further refine a selection
  * `.find()` - any descendants that match
  * `.submit()`
  * `.children().last().clone()`
  * `.append(copied_thing)`

#### Lecture Notes/Links

* [Class Video]()

#### Evening Reading

* Preview Reading: [The creator of Rails speaks on how Rails does AJAX](https://signalvnoise.com/posts/3697-server-generated-javascript-responses)
* Optional (excellent) Reading: Chapters 13 and 14 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment

* [Add jQuery](https://github.com/tiyd-rails-2015-08/add_jquery)
  * [Starting Point](https://github.com/tiyd-rails-2015-08/coursyl_with_some_jquery)


## Wednesday - AJAX

**Challenge:** [Discuss Git Messes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_git_messes.md)

* Git
  * `git reset`
  * `git rebase`
  * `git filter-branch`
* Random topics
  * JQuery UI
  * JQuery Plugins
  * The downsides of linking to external styles/javascript
  * Installing gems vs. copying assets
  * Ruby Toolbox
* Unobtrusive Javascript
* Using `data-` attributes
* AJAX
  * The way to replace sections of a page without reloading the whole page!
  * `remote: true` on links and forms
  * Rendering `.js.erb` files as responses to AJAX calls
  * `render @quote` (if `@quote` contains one Quote instance) uses `_quote.html.erb`
  * `render @quotes` (if `@quotes` contains an array of Quote instances) uses `_quote.html.erb` many times
* Homework Tips:
  * Google for something which runs JavaScript every X seconds.
  * To make the AJAX call from something that isn't a remote button or a remote form, try one of these:
    * `$.ajax()`
    * `$.getScript()`

#### Lecture Notes/Links

* [Class Video]()
* [JQuery UI](http://jqueryui.com/)
* [Ruby Toolbox](https://www.ruby-toolbox.com)


#### Evening Reading

* Optional (excellent) Reading: Chapters 17 and 18 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment - IN PAIRS

[Auction Site with AJAX](https://github.com/tiyd-rails-2015-08/auction_ajax)

## Thursday

*

## Weekend Assignment - IN PAIRS

[Todo List](https://github.com/tiyd-rails-2015-08/todo_app)

-->
