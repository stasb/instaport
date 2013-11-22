class LocationController < ApplicationController
  def random_airport
    @airport = Airport.get_random_airport
  end
end
