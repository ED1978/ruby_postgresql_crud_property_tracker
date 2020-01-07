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

  def save()
    db = PG.connect({dbname: 'property_tracker', host: 'localhost'})
    sql = "INSERT INTO properties
    (
      address,
      value,
      number_of_bedrooms,
      year_built,
      buy_let_status,
      square_footage,
      build
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    RETURNING *"
    values = [@address, @value, @number_of_bedrooms, @year_built, @buy_let_status, @square_footage, @build]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]['id'].to_i
    db.close
  end

end
