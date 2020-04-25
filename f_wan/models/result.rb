require_relative('../db/sql_runner')

class Result

    attr_reader :id
    attr_accessor :position, :driver_id

    def initialize( options )
        @id = options['id'] if options['id']
        @position = options['position']
        @driver_id = options['driver_id']
        @race_id = options['race_id']
    end

end