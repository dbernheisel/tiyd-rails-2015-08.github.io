---
layout: default
---

## Week 2 - Overview

Students should be comfortable with the following at the end of this week:

* Agile Development
* Testing and TDD
* Blocks and Enumerable
* Inheritance, Composition, and Modules

We will also begin discussing:

1. Agile development practices
1. Pair Programming


## Important Links

* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - Inheritance and Testing

**Problem of the Day:** [Vehicle Inheritance](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/vehicle_inheritance)

* Human Learning: Feedback Cycles and Agile Development
  * Diagram: Feedback cycles of escalating size.
  * Agile feedback loops:
    * Project post-mordems
    * Iteration retrospectives
    * Daily standups
    * Run code and tests often, ideally after every change.
    * Pair programming
  * Build fully-functional apps during each iteration.
    * Example: Build an ecommerce site for T-shirts.
    * Start with a simple subset of features, like a catalog with no interaction.
* Random Items
  * `attr_reader`, `attr_accessor`
  * Splat operator (`*`)
* Inheritance
  * Exploration: Start with Float object.  Explore superclasses and classes.
  * Explain how the exception problem was solved over the weekend.
  * Begin in-class work on Vehicle exercise.
* Exceptions
  * Example code: divide by zero in a method
  * Catching exceptions (`begin ... rescue ... end`)
  * Raising exceptions yourself
  * Inventing exception classes
* Gems
  * `gem list`
  * `gem install`
* Testing
  * Show tests for the Vehicle class. Use code already built.
  * Build out "12 Days of Christmas" for its test suite.
  * Sliming
* Git
  * Reason: Sharing code with others
  * `git clone`
  * `.gitignore` files
  * Forking
  * GitHub collaborators
  * `git pull`

#### Lecture Notes/Links

* [Class Video](http://youtu.be/iU10DSFwhnw)
* Extra inheritance exercise: [National Expressions](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/national_expressions)

#### Evening Reading

* [Pro Git Ch. 2.5](http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Assignment - IN PAIRS

Begin [Battleship](https://github.com/tiyd-rails-2015-08/battleship).  Get tests 01-18 to pass.


## Tuesday - Modules and Composition

**Problem of the Day:** [Vehicle Modules](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/vehicle_modules)

* Human Learning
  * Pair Programming pros and cons (now that we have experience)
  * Coding a new application is more about debugging and troubleshooting than we think at first
* Debugging
  * Read the error messages
  * Squint and think hard
  * `puts` statements
  * `byebug`
* Random topics
  * You can return objects when true/false is expected (e.g. `ship.fire_at(x, y)`)
  * Ternary operator (e.g. `object.is_true? ? "Yes" : "No" `)
* OO: `public` vs `private`
  * Example: Daisy is a Builder.  She has many steps she takes to build a house.
  * We don't want to micromanage her and tell her HOW to build the house; we just want to tell her to build it and let her figure out the details.
  * Tell, don't ask
  * Class variables - DON'T
* Inheritance - is-a
* Modules - acts-like-a/has-a-role
* Namespacing
  * Use of modules for namespacing
  * Example: IronYard module with Instructor and Student classes.  Iron Yard students don't sleep, but a Student outside the module does.
  * Example: Bass.
    * Make two classes with the same name.  One for the fish and one for the instrument.
    * Each should have a `maximum_length` method, but they should return different things
    * You should also be able to call `Fish::PHYLUM` and get back `"Chordata"`
* Composition - has-a
  * Example: YellingString.  (Could use a better example for this)

#### Lecture Notes/Links

* [Class Video](http://youtu.be/fLbL-0ITzC0)
* [Private Method Example](w2-2/builder.rb)
* [Module (for Sharing Behavior) Example](w2-2/vehicle.rb)
* [Module (for Namespacing) Example](w2-2/bass.rb)
* [Composition Example](w2-2/yelling_string.rb)

#### Evening Reading

* [Article on Pair Programming Styles](http://articles.coreyhaines.com/posts/thoughts-on-pair-programming/)

#### Assignment - IN PAIRS

Continue [Battleship](https://github.com/tiyd-rails-2015-08/battleship).  Get tests 19-31 to pass.


## Wednesday - Regex, Enumerable, and Blocks

**Problem of the Day:** [Find Names](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/find_names)

* Random topics
  * Show how easy refactoring is with good tests.  Move arrays out to methods.
  * Don't overdo it on instance variables
  * Keyword arguments
  * Monkey Patching: Change a string to add `.to_pig_latin`
  * Calling private methods with `.send()`
  * Arrays as stacks and queues (`.push(thing)`, `.pop`, `.unshift(thing)`, `.shift`)
* Regex
  * (NOTE: In future, need better motivating examples.)
  * [XKCD on Regular Expressions](https://xkcd.com/1171/)
  * "Peter piper picked a peck of pickled peppers"
  * `+`, `*`, `?`
  * `\w`, `\d`, `\s`, and their capital (opposite) versions
  * Exercise: Build the simplest possible version of function that tells you whether a phone number is valid.
  * How about email addresses?
  * Capture groups
  * Using regex in Ruby
  * `.match`
  * `.scan`, `.sub`, `.gsub`
* Enumerable
  * `.each`
  * `.each_with_index`
  * `.map`
  * `.select` / `.reject`
  * `.all?` / `.any?`
  * `.reduce`
* Inline blocks (e.g. `array.map {|a| a.class}` instead of `do ... end`)

#### Lecture Notes/Links

* [Class Video](https://youtu.be/kF8NUjg6vYs)
* [Patterns Example (Enumerable Methods)](w2-3/patterns.rb)
* [Monkey Patching Example](w2-3/pig_latin.rb)
* [Regular Expression Testing Site](http://www.rubular.com)
* [RegexOne - a great regex tutorial](http://regexone.com/)
* [Extreme Regex Tips for Ruby](http://idiosyncratic-ruby.com/11-regular-extremism.html)

#### Evening Reading

* [Blocks and Procs](http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/) - Only required down through "Procedures, AKA, Procs."  Read "Lambdas" and beyond if you dare.


#### Assignment - IN PAIRS

Complete [Battleship](https://github.com/tiyd-rails-2015-08/battleship).  Get all tests to pass.


## Thursday - Test-Driven Development

**Problem of the Day:** [OddArray](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/odd_array_with_tdd)

* Human Learning
  * Retrieval practice is better than re-reading.
  * Elaboration is better than repetition.
* Blocks/Procs/Lambdas/Methods
  * Methods as objects
    * `m = method(:my_method)`
    * `m.call`
  * Blocks
    * Code snippets that we pass to things like `.each` or `.map`
    * Passed in to a method using `{}` or `do ... end`
    * `yield` to a block inside a method
  * Procs
    * Crystalized blocks
    * `p = Proc.new {...block_stuff...}`
    * Passed in to a method using `method(&p)`
    * Called from within the method with `parameter.call`
  * Lambdas
    * Procs with their own scope on the call stack
    * `return` is limited to returning from just the lambda, not the method calling the lambda.
* TDD
  * Four steps:
    * Write a test which tests one (isolated) new behavior
    * Make sure your new test fails
    * Write code to make your test pass
    * Refactor while keeping all tests passing
  * Run through example TDD with ye olde Albums and Artists example.
  * `assert_in_delta`
* Human Learning: Estimating is hard.

#### Lecture Notes/Links

* [Class Video](http://youtu.be/xFSj3QJOfYI)
* [Blocks Example](w2-4/transform.rb)
* [Album & Artist Tests](w2-4/albums_test.rb)
* [Album Class](w2-4/album.rb)
* [Artist Class](w2-4/artist.rb)

### Evening Reading

* [Estimating Games](w2-4/estimating_games.pdf)

## Weekend Assignment

[Employee Reviews](https://github.com/tiyd-rails-2015-08/employee_reviews_project)
