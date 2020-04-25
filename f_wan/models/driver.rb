require_relative('../db/sql_runner')

class Driver

    attr_reader :id
    attr_accessor :first_name, :last_name

    def initialize( options )
        @id = options['id'] if options['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
    end

    def save()
        sql = "INSERT INTO drivers
            ( first_name, last_name )
            VALUES ($1, $2)
            RETURNING id;"
        values = [@first_name, @last_name]
        result = SqlRunner.run(sql, values)
        @id = result.first['id'].to_i
    end

    

end