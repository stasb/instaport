require 'csv'

class DataParser

  def initialize
  end

  def import_airports
    CSV.foreach('data/airport_locations.tsv') do |row|
      row_array = row[0].split("\t")

      airport_attributes = {
        code: row_array[0],
        latitude: row_array[1],
        longitude: row_array[2],
        name: row_array[3],
        city: row_array[4],
        country: row_array[5],
        country_abbr_1: row_array[6],
        country_abbr_2: row_array[7],
        gmt_offset: row_array[8],
        runway_length: row_array[9],
        runway_elevation: row_array[10]
      }

      Airport.create!(airport_attributes)
    end
  end
end
