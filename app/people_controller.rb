require 'file_reader'

class PeopleController

  def initialize(params)
    @params = params
  end

  def normalize
    FileReader.new(@params).read
  end

  private

  attr_reader :params
end
