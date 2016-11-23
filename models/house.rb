require_relative('../db/sql_runner')

class House

  attr_reader(:house_name, :id)

  def initialize(options)
    @id = nil || options['id'].to_i
    @house_name = options['house_name']
  end

  def save()
    sql = "INSERT INTO houses (
    house_name ) VALUES 
    ('#{ @house_name }') 
    RETURNING *"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run( sql )
    result = houses.map { |house| House.new( house ) }
    return result
  end

  def students() 
    sql = "SELECT * FROM students WHERE house_id = #{@id}"
    students = SqlRunner.run(sql)
    result = students.map{ |student| Student.new(student)}
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM houses WHERE id=#{id}"
    house = SqlRunner.run( sql )
    result = House.new( house.first )

    return result
  end




end