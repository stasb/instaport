class Airport
  include Mongoid::Document

  field :code, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  field :name, type: String
  field :city, type: String
  field :country, type: String
  field :country_abbr_1, type: String
  field :country_abbr_2, type: String
  field :gmt_offset, type: String
  field :runway_length, type: Integer
  field :runway_elevation, type: Integer

  def self.get_random_airport

  end
end
