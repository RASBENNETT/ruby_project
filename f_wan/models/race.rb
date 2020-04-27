require_relative('../db/sql_runner')
require_relative('result')

class Race

    attr_reader :id
    attr_accessor :location, :date

    def initialize( options )
        @id = options['id'] if options['id']
        @location = options['location']
        @date = options['date']
    end

    def save()
        sql = "INSERT INTO races
            ( location, date )
            VALUES ($1, $2)
            RETURNING id;"
        values = [@location, @date]
        result = SqlRunner.run(sql, values)
        @id = result.first['id'].to_i
    end

    def result()
      sql = "SELECT * FROM ((results 
      INNER JOIN drivers ON results.driver_id = drivers.id)
      INNER JOIN races ON results.race_id = races.id)
      WHERE races.id = $1
      ORDER BY position ASC;"
      values = [@id]
      results = SqlRunner.run(sql, values)
      return results.map{ |result| Result.new(result) }
    end

    def winner()
      id = result().first.driver_id.to_i
      return Driver.find(id)
    end

    ### CLASS METHODS  ###

    def self.all()
        sql = "SELECT * FROM races;"
        races = SqlRunner.run( sql )
        return races.map { |race| Race.new( race ) }
      end
    
      def self.find( id )
        sql = "SELECT * FROM races
        WHERE id = $1;"
        values = [id]
        races = SqlRunner.run( sql, values )
        return Race.new( races.first ) if races.ntuples > 0
        return nil
      end
    
      def self.delete_all
        sql = "DELETE FROM races;"
        SqlRunner.run( sql )
      end


end