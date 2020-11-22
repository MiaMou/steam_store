require "application_system_test_case"

class SteamsTest < ApplicationSystemTestCase
  setup do
    @steam = steams(:one)
  end

  test "visiting the index" do
    visit steams_url
    assert_selector "h1", text: "Steams"
  end

  test "creating a Steam" do
    visit steams_url
    click_on "New Steam"

    fill_in "About the game", with: @steam.about_the_game
    fill_in "Achievements", with: @steam.achievements
    fill_in "Appid", with: @steam.appid
    fill_in "Average playtime", with: @steam.average_playtime
    fill_in "Background", with: @steam.background
    fill_in "Categories", with: @steam.categories
    fill_in "Detailed description", with: @steam.detailed_description
    fill_in "Developer", with: @steam.developer
    fill_in "English", with: @steam.english
    fill_in "Genres", with: @steam.genres
    fill_in "Header image", with: @steam.header_image
    fill_in "Median playtime", with: @steam.median_playtime
    fill_in "Movies", with: @steam.movies
    fill_in "Name", with: @steam.name
    fill_in "Negative ratings", with: @steam.negative_ratings
    fill_in "Owners", with: @steam.owners
    fill_in "Platforms", with: @steam.platforms
    fill_in "Positive ratings", with: @steam.positive_ratings
    fill_in "Price", with: @steam.price
    fill_in "Publisher", with: @steam.publisher
    fill_in "Release date", with: @steam.release_date
    fill_in "Required age", with: @steam.required_age
    fill_in "Screenshots", with: @steam.screenshots
    fill_in "Short description", with: @steam.short_description
    fill_in "Steamspy tags", with: @steam.steamspy_tags
    click_on "Create Steam"

    assert_text "Steam was successfully created"
    click_on "Back"
  end

  test "updating a Steam" do
    visit steams_url
    click_on "Edit", match: :first

    fill_in "About the game", with: @steam.about_the_game
    fill_in "Achievements", with: @steam.achievements
    fill_in "Appid", with: @steam.appid
    fill_in "Average playtime", with: @steam.average_playtime
    fill_in "Background", with: @steam.background
    fill_in "Categories", with: @steam.categories
    fill_in "Detailed description", with: @steam.detailed_description
    fill_in "Developer", with: @steam.developer
    fill_in "English", with: @steam.english
    fill_in "Genres", with: @steam.genres
    fill_in "Header image", with: @steam.header_image
    fill_in "Median playtime", with: @steam.median_playtime
    fill_in "Movies", with: @steam.movies
    fill_in "Name", with: @steam.name
    fill_in "Negative ratings", with: @steam.negative_ratings
    fill_in "Owners", with: @steam.owners
    fill_in "Platforms", with: @steam.platforms
    fill_in "Positive ratings", with: @steam.positive_ratings
    fill_in "Price", with: @steam.price
    fill_in "Publisher", with: @steam.publisher
    fill_in "Release date", with: @steam.release_date
    fill_in "Required age", with: @steam.required_age
    fill_in "Screenshots", with: @steam.screenshots
    fill_in "Short description", with: @steam.short_description
    fill_in "Steamspy tags", with: @steam.steamspy_tags
    click_on "Update Steam"

    assert_text "Steam was successfully updated"
    click_on "Back"
  end

  test "destroying a Steam" do
    visit steams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Steam was successfully destroyed"
  end
end
