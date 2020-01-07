require('pg')

class Property

attr_accessor :address, :value, :number_of_bedrooms, :year_built, :buy_let_status, :square_footage, :build
attr_reader :id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @address = options['address']
  @value = options['value']
  @number_of_bedrooms = options['number_of_bedrooms']
  @year_built = options['year_built']
  @buy_let_status = options['buy_let_status']
  @square_footage = options['square_footage']
  @build = options['build']
end

end
