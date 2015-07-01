# Reflections for this class

* Graphing sooner if possible
* I'd like some better real-world examples about code which takes up too much memory, leaks, invokes garbage collection, etc.  jeg2 said he can do it "easily."  Maybe a search will give a starting point.

## Not covered

* CI
* Decomposing Fat Models
* Ping-pong pairing
* Foreign Key Constraints
* Memory usage and find_each
* Delegation
  * `delegate :category, to: :phone_categories`
* Random Topics
  * Action on your server trying to access the API on your server
  * Deadlock
  * Software threading
  * Multi-core processors

# Reflections for the next class

* Update assignment JSONs.
* Incorporate Owen's
* Write a markdown page with lots of links which details the entire curriculum.
* Clear up the difference between mocking and stubbing.
* http://blog.skylight.io/4-easy-ways-to-speed-up-your-rails-app/

# Changes to app

* Score challenges
* Incorporate student feedback scores
* Score assignment with one number and a comment field
* Multi-tenancy?

# Other assignment ideas

* Unbeatable Tic-tac-toe (https://xkcd.com/832/)
* Minesweeper
* Add devise and OAuth to, say, the auction site
* Curriculum Management Tool
* Volunteer Coordination
* Hotel Accessibility Review Site
* Close a Github issue from the command line.

# Never got to

* Macros
  * https://pragmaticstudio.com/blog/2015/4/14/ruby-macros
* threads
  * http://www.jstorimer.com/blogs/workingwithcode/8085491-nobody-understands-the-gil
* Singleton methods (`def dog1.hunt ... end`)
  * there's no such thing as a Class method.
* `define_method()`
* Simplecov
* Versioning in a Database
* Disabled_at pattern (soft delete)
* http://mislav.uniqpath.com/poignant-guide/
* Single Table Inheritance
* scoped associations

    class Item < ActiveRecord::Base
      has_many :orders do
        def for_user(user_id)
          where(user_id: user_id)
        end
      end
    end

    Item.first.orders.for_user(current_user)

# Additional concepts to assess:

* README
