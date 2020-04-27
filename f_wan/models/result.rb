require_relative('../db/sql_runner')

class Result

    attr_reader :id
    attr_accessor :position, :driver_id, :race_id

    def initialize( options )
        @id = options['id'] if options['id']
        @position = options['position']
        @driver_id = options['driver_id'] if options['driver_id']
        @race_id = options['race_id'] if options['race_id']
    end

    def save()
        sql = "INSERT INTO results
            ( position, driver_id, race_id)
            VALUES ($1, $2, $3)
            RETURNING id;"
        values = [@position, @driver_id, @race_id]
        result = SqlRunner.run(sql, values)
        @id = result.first['id'].to_i
    end


    def self.all()
        sql = "SELECT * FROM results;"
        results = SqlRunner.run( sql )
        return results.map { |result| Result.new( result ) }
      end
    
      def self.find( id )
        sql = "SELECT * FROM results
        WHERE id = $1;"
        values = [id]
        results = SqlRunner.run( sql, values )
        return Result.new( results.first ) if results.ntuples > 0
        return nil
      end
    
      def self.delete_all
        sql = "DELETE FROM results;"
        SqlRunner.run( sql )
      end


end