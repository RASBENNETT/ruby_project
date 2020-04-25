require_relative('../db/sql_runner')

class Team

    attr_reader :id
    attr_accessor :name

    def initialize( options )
        @id = options['id'] if options['id']
        @name = options['name']
    end




    
end
