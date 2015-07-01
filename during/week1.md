---
layout: default
---

## Week 1 - Overview

Students should be comfortable with the following at the end of this week:

* Ruby Basics
* Control Flow
* Variables
* Methods
* Arrays and Hashes
* Objects and Classes

We will also begin discussing:

1. The process of human learning
1. Git and GitHub

## Important Links

* [Homework Submission Form](http://goo.gl/forms/o9so3mi9Sd)


## Monday - Control Flow and Variables

**Problem of the Day:** Peanut Butter and Jelly.

* Class Logistics
  * Daily schedule
  * Exercises, Assignments, and Projects
  * Readings
  * Pair-question-asking
* Human Learning
  * Definition: Acquiring knowledge and skills and having them readily available from memory so you can make sense of future problems and opportunities.
  * New learning requires a foundation of prior knowledge.
  * Comfort, Learning, and Panic Zones
  * The data collection we'll be doing in class
  * Diagram: Three Concentric Zones
* Programming Languages
  * What are they?
  * How many are there?
  * What makes Ruby special?
  * MINASWAN
  * Why Ruby is not the same thing as Ruby on Rails
* Instructions - PB & J
* Control Flow
  * PB & J for the entire class.  Use a `while`, maybe an `if`.
  * `if`, `else`, `elsif`, `end`
  * `while` loop
* Indentation
* Variables
  * PB & J for the entire class, everyone wants a different jelly.
* Logical Statements
  * Concepts of `and` and `or`
  * While someone still wants a sandwich
  * While someone still wants a sandwich AND I still have bread
  * If `selection == "Strawberry"` OR `selection == "Raspberry"`
  * Say I want to edit a comment on a forum.  I can do that if I'm logged in and it's my comment or if I'm an admin.
  * `==` vs `=`
  * `!`
* Data Types
  * Strings
  * Integers
  * Floats
  * Dates
    * [XKCD on Dates](https://xkcd.com/1179/)
  * Datetimes
* Print/Get
  * `puts`
  * `gets`
  * `gets.chomp`
* Terminal
  * Mac file system
  * `pwd`
  * `ls`
  * `cd`
  * `/` and `~`
* Running Ruby code from the command line

#### Lecture Notes/Links

* [Class Video]()
* [Programming Language Family Tree](w1-1/languages.png)
* [Whitespace Language](http://en.wikipedia.org/wiki/Whitespace_%28programming_language%29#Sample_code)
* [Hodor-lang](http://www.hodor-lang.org/)
* [Why Dates Get Weird](https://gist.github.com/pixeltrix/e2298822dd89d854444b)

#### Evening Reading

* [How to ask for technical help](https://www.youtube.com/watch?v=hY14Er6JX2s)

#### Assignment

[User Input Statistics](https://github.com/tiyd-rails-2015-08/input_statistics)


## Tuesday - Methods and Arrays

**Problem of the Day:** [The 12 Days of Christmas](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/twelve_days_of_christmas)

* Methods
  * Start with [Five Monkeys](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/monkeys_jumping_on_the_bed)
  * Return values vs side effects (including `puts`) vs setting variables outside (which they can't)
  * Parameters
  * Default parameters
  * Define the same method twice
* More on Data Types
  * Type conversions (`to_i`, `to_f`, etc)
  * Binary
  * How to store integers
  * How to store strings
  * `1/3`, `2/3`
  * `2.3+3.4` - Floating Point Errors
  * Decimal (later)
* Common Error Messages
  * Line Numbers
  * TypeError (`2+"1"`)
  * NameError (`undefined local variable`)
  * NoMethodError (`nil.reverse`)
  * ArgumentError
* Data Structures
  * Ranges
  * Arrays
  * `+` vs `<<`
  * `.each`
* More on Variables
  * The two hardest problems in computer science: Naming things (which matters now) and cache invalidation (later!)
  * Two names for the same variable
  * How variables are stored in memory
  * How memory is different from hard disk
* Git
  * Reason: keep different versions over time
  * Reason: backups
  * `git add`
  * `git commit`
  * `git push`
* Editors (and pros and cons of the default vim)
* `rand`
* More on Terminal/Running Ruby
  * Hitting Up
  * Ctrl-C
  * [XKCD on Sudo](https://xkcd.com/149/): as awesome as this is, you shouldn't ever need to use it in this class.

#### Lecture Notes/Links

* [Class Video](http://youtu.be/i7FkJtt3B9w)
* [Code: 5 Little Monkeys](w1-2/monkeys.rb)
* [Code: 12 Days of Christmas](w1-2/christmas.rb)
* [Code: 12 Days of Cruzmas](w1-2/cruzmas.rb)
* [Not entering your GitHub password into git for every push](https://help.github.com/articles/caching-your-github-password-in-git/)
* Extra method exercise: [Random Number in a Range (Fish Story)](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/random_in_range)

#### Evening Reading

* [Pro Git Ch. 1.3](http://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
* [Pro Git Ch. 2.1](http://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)

#### Assignment

[Number Guessing Game](https://github.com/tiyd-rails-2015-08/number_guessing)


## Wednesday - Hashes and Nested Data Structures

**Problem of the Day:** [Phone Number Tracker](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/phone_numbers)

* Logistics/Tricks
  * Join the `#dur_aug2015_rails` Slack Channel
  * Customizing your `PS1`
  * Flycut for copy history
  * Vertical select via Atom's Sublime-Style-Column-Selection package
* Control Flow (in light of Number Guessing Game)
  * next (not lose a turn if you guess the same thing twice)
  * break (stop asking when the correct number is guessed)
  * return
  * exit
* Attempt 1: Array
  * Just names first.  Ask for everyone's name and display them all at the end.
  * How do I prevent duplicates when I enter a name more than once?
* Attempt 2: Set
  * Basic `require` from standard library
  * Core library vs. Standard library
* Attempt 3: Hash
  * Keep track of a phone number for each person
* Attempt 4: Hashes inside a Hash
  * Keep track of a phone number and an email address and a birthdate for each person
* Attempt 5: Arrays inside Hashes
  * Keep track of multiple email addresses for each person.
* Symbols
* Git/GitHub Conventions
  * Markdown
  * Quality READMEs
  * Good commit messages

#### Lecture Notes/Links

* [Class Video](http://youtu.be/nz8v4v7VT7k)
* [Variable vs. Method HW Example](w1-3/hw.rb)
* [Multi-method HW Example](w1-3/hw2.rb)
* [A series of phone number programs](w1-3/phone_numbers.rb)
* Extra array-to-hash exercise: [Super-simple Search](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/super_simple_search)
* Extra hash exercise: [Sorta-simple Search](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/sorta_simple_search)
* [Markdown Reference](https://help.github.com/articles/markdown-basics/)
* [PS1 Variables Reference](http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html)

#### Evening Reading

* [Pro Git Ch. 2.2](http://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository)

#### Assignment

[Blackjack Advisor](https://github.com/tiyd-rails-2015-08/blackjack_advisor)


## Thursday - Classes

**Problem of the Day:** [Album Tracker](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists)

* Human Learning
  * Try to solve a problem before being taught how to do it.
  * Interleaving learning is better than single-track learning.
* Check-in on Readings
* Mac Usage
  * Mac spaces
  * Previously visited sites
* Random Topics
  * What does an `=` call return?
  * What does an `||` call return?
  * What does `if` or `while` actually expect?
  * What is "truthy" and what is "falsey" in Ruby?
  * Exclusive OR (`^`)
* Object Oriented Programming
  * Example: People have cell phones, people receive calls and cell phones ring.
  * What are objects?
    * State and behavior
    * State = instance variables
    * Behavior = methods
  * Everything in Ruby is messages being passed to objects!!!
    * Example of how we've been using strings.
  * What are classes?
    * Blueprints for objects
  * Encapsulation
* Math is messages being passed to objects as well!!!
  * `2 + 2.3`
  * Overriding arithmetic operations (e.g. `def +(other) ... end`)
* Ruby code in multiple files
  * `require`

#### Lecture Notes/Links

* [Class Video](http://youtu.be/Vc9aeD3Muvc)
* [album_program.rb](w1-4/album_program.rb)
* [album.rb](w1-4/album.rb)
* [artist.rb](w1-4/artist.rb)
* [Screenshot of all 3](w1-4/album.png)
* [Screenshot of simpler example from last cohort](w1-4/human.png)

#### Evening Reading

* [A good blog post about creating your own error classes](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)


## Weekend Assignment

[Currency Converter](https://github.com/tiyd-rails-2015-08/currency_converter_project)
