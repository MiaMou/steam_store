require 'test_helper'

class SteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @steam = steams(:one)
  end

  test "should get index" do
    get steams_url
    assert_response :success
  end

  test "should get new" do
    get new_steam_url
    assert_response :success
  end

  test "should create steam" do
    assert_difference('Steam.count') do
      post steams_url, params: { steam: { about_the_game: @steam.about_the_game, achievements: @steam.achievements, appid: @steam.appid, average_playtime: @steam.average_playtime, background: @steam.background, categories: @steam.categories, detailed_description: @steam.detailed_description, developer: @steam.developer, english: @steam.english, genres: @steam.genres, header_image: @steam.header_image, median_playtime: @steam.median_playtime, movies: @steam.movies, name: @steam.name, negative_ratings: @steam.negative_ratings, owners: @steam.owners, platforms: @steam.platforms, positive_ratings: @steam.positive_ratings, price: @steam.price, publisher: @steam.publisher, release_date: @steam.release_date, required_age: @steam.required_age, screenshots: @steam.screenshots, short_description: @steam.short_description, steamspy_tags: @steam.steamspy_tags } }
    end

    assert_redirected_to steam_url(Steam.last)
  end

  test "should get edit" do
    get edit_steam_url(@steam)
    assert_response :success
  end

  test "should update steam" do
    patch steam_url(@steam), params: { steam: { about_the_game: @steam.about_the_game, achievements: @steam.achievements, appid: @steam.appid, average_playtime: @steam.average_playtime, background: @steam.background, categories: @steam.categories, detailed_description: @steam.detailed_description, developer: @steam.developer, english: @steam.english, genres: @steam.genres, header_image: @steam.header_image, median_playtime: @steam.median_playtime, movies: @steam.movies, name: @steam.name, negative_ratings: @steam.negative_ratings, owners: @steam.owners, platforms: @steam.platforms, positive_ratings: @steam.positive_ratings, price: @steam.price, publisher: @steam.publisher, release_date: @steam.release_date, required_age: @steam.required_age, screenshots: @steam.screenshots, short_description: @steam.short_description, steamspy_tags: @steam.steamspy_tags } }
    assert_redirected_to steam_url(@steam)
  end

  test "should destroy steam" do
    assert_difference('Steam.count', -1) do
      delete steam_url(@steam)
    end

    assert_redirected_to steams_url
  end
end
