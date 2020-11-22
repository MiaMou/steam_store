namespace :import do
  desc "Import info"
  task data: :environment do
    file_path = File.join(Rails.root, 'public', 'steam.csv')
    csv_text = File.read(file_path)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each_with_index do |row, i|
      Steam.find_or_create_by(
        appid: row["appid"],
        name: row["name"],
        release_date: row["release_date"],
        english: row["english"],
        developer: row["developer"],
        publisher: row["publisher"],
        platforms: row["platforms"],
        required_age: row["required_age"],
        categories: row["categories"],
        genres: row["genres"],
        steamspy_tags: row["steamspy_tags"],
        achievements: row["achievements"],
        positive_ratings: row["positive_ratings"],
        negative_ratings: row["negative_ratings"],
        average_playtime: row["average_playtime"],
        median_playtime: row["median_playtime"],
        owners: row["owners"],
        price: row["price"]
      )
    end

    file_path_media = File.join(Rails.root, 'public', 'steam_media_data.csv')
    csv_text_media = File.read(file_path_media)
    csv_media = CSV.parse(csv_text_media, :headers => true)
    csv_media.each_with_index do |row, i|
      Steam.find_by(appid: row["steam_appid"])&.update(
        header_image: row["header_image"],
        screenshots: row["screenshots"],
        background: row["background"],
        movies: row["movies"]
      )
    end

    file_path_desc = File.join(Rails.root, 'public', 'steam_description_data.csv')
    csv_text_desc = File.read(file_path_desc)
    csv_desc = CSV.parse(csv_text_desc, :headers => true)
    csv_desc.each_with_index do |row, i|
      Steam.find_by(appid: row["steam_appid"])&.update(
        detailed_description: row["detailed_description"],
        about_the_game: row["about_the_game"],
        short_description: row["short_description"]
      )
    end
  end
end