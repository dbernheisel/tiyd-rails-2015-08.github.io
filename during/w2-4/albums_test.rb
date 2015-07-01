require 'minitest/autorun'
require 'minitest/pride'

require './album'
require './artist'


class AlbumsTest < Minitest::Test

  def test_album_exists
    assert Album
  end

  def test_can_create_new_album
    assert Album.new("Chaos and Bunnies")
  end

  def test_album_knows_its_name
    assert_equal "Moonlight Walks", Album.new("Moonlight Walks").name
  end

  def test_can_create_new_artist
    assert Artist.new("Def Turner")
  end

  def test_artist_knows_its_name
    random_number = rand(100000)
    assert_equal "The Jennifertones#{random_number}", Artist.new("The Jennifertones#{random_number}").name
  end

  def test_artist_can_be_given_albums
    artist = Artist.new("The Jennifertones")
    album = Album.new("Chaos and Bunnies II")
    assert artist.assign(album)
  end

  def test_artist_knows_its_albums
    artist = Artist.new("The Jennifertones")
    album = Album.new("Chaos and Bunnies II")
    artist.assign(album)
    assert_equal [album], artist.albums
    assert_equal ["Chaos and Bunnies II"], artist.album_names
  end

  def test_that_album_has_price
    assert_equal 129.95, Album.new("The Price", 129.95).price
  end

  def test_that_album_can_be_discounted
    the_price = Album.new("The Price", 129.95)
    the_price.discount(2.0/3)
    assert_in_delta 129.95/3, the_price.price, 0.01
  end
end
