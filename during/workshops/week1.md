---
layout: default
---

## Week 1 Workshop (2015-09-03)

### Classes and Objects

Based on instructions from [Problem of the Day](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists)

1. Create an Album class that can store name, number in stock, and price.
  * create file called `album.rb`
  * write `initialize` method with parameters for object
  * write `name` method for object

Solution:

    class Album
      def initialize(name, stock, price)
        @name = name
        @stock = stock
        @price = price
      end

      def name
        @name
      end
    end


2. Write methods in the Album Class to:
  * Sell copies of an album in stock
    ```
    def sell(amount)
      @stock -= amount
    end  
    ```
  * Increase the number of albums in stock
    ```
    def buy(amount)
      @stock += amount
    end  
    ```
  * Get a count of how many copies of an album you have in stock
    ```
    def stock
      @stock
    end
    ```
3. Create a new Artist class (once you know his/her name) that can assign an album to an Artist's catalog
  * create file called `artist.rb`
  * write `initialize` method with parameters for object
  * write methods for object
    ```
    Class Artist
      def initialize(name)
        @name = name
        @albums = []
      end

      def albums
        @albums
      end

      def add_album(new_album)
        @albums << new_album
      end

    end
    ```
4. Put a discount percentage on an album. Put a discount percentage on an artist's entire catalog. Get the current price of an album.
  * write `price` method for Album
    ```
    def price
      @price
    end
    ```
  * write `discount` method for Album
    ```
    def discount(ratio)
      @price -= ratio * @price
    end
    ```
  * write `discount` method for Artist
    ```
    def discount(ratio)
      @albums.each do |album|
        album.discount(ratio)
      end
    end
    ```

#### Files Associated with Workshop
* code.rb
* artist.rb
* album.rb


#### Notes for Mason
* Start with Artist next time instead of starting with Album.
