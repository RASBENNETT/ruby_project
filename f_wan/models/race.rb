require_relative('../db/sql_runner')

class Race

    attr_reader :id
    attr_accessor :location, :date

    def initialize( options )
        @id = options['id'] if options['id']
        @location = options['location']
        @date = options['date']
    end


    
end