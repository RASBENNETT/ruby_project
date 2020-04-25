require_relative('../db/sql_runner')

class Driver

    attr_reader :id
    attr_accessor :first_name, :last_name

    def initialize( options )
        @id = options['id'] if options['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
    end

    def new()
        
    end

end