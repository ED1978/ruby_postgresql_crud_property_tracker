require('pry-byebug')
require_relative('./models/Property.rb')

Property.delete_all()

property1 = Property.new(
  {
    'address' => '106 Lancefield Quay',
    'value' => 230000,
    'number_of_bedrooms' => 2,
    'year_built' => 2004,
    'buy_let_status' => 'Let',
    'square_footage' => 250,
    'build' => 'Flat'
  }
)
property1.save()

property2 = Property.new(
  {
    'address' => '64 Mayne Road',
    'value' => 180000,
    'number_of_bedrooms' => 2,
    'year_built' => 1984,
    'buy_let_status' => 'Bought',
    'square_footage' => 460,
    'build' => 'Semi'
  }
)
property2.save()

# property1.delete()

p properties = Property.all()

# binding.pry
# nil
