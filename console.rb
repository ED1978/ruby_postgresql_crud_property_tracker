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

binding.pry
nil
