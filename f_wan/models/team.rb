require_relative('../db/sql_runner')

class Team

    attr_reader :id
    attr_accessor :name

    def initialize( options )
        @id = options['id'] if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO teams
            ( name )
            VALUES ($1)
            RETURNING id;"
        values = [@name]
        result = SqlRunner.run(sql, values)
        @id = result.first['id'].to_i
    end


    ### CLASS METHODS  ###

    def self.all()
        sql = "SELECT * FROM teams;"
        teams = SqlRunner.run( sql )
        return teams.map { |team| Team.new( team ) }
      end
    
      def self.find( id )
        sql = "SELECT * FROM teams
        WHERE id = $1;"
        values = [id]
        teams = SqlRunner.run( sql, values )
        return Team.new( teams.first ) if teams.ntuples > 0
        return nil
      end
    
      def self.delete_all
        sql = "DELETE FROM teams;"
        SqlRunner.run( sql )
      end



end
