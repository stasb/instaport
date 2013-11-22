class DataController < ApplicationController
  def import_airports
    importer = DataParser.new
    importer.import_airports
  end
end
