require_relative('../db/sql_runner')

class Driver

    attr_reader :id, :first_name, :last_name


    def initialize( options )
        @id = options['id'].to_i if options['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
        @team_id = options['team_id']
    end

    def save()
        sql = "INSERT INTO drivers
            ( first_name, last_name, team_id)
            VALUES ($1, $2, $3)
            RETURNING id;"
        values = [@first_name, @last_name, @team_id]
        result = SqlRunner.run(sql, values)
        @id = result.first['id'].to_i
    end

    def team()
      sql = "SELECT * FROM teams
      WHERE id = $1;"
      values = [@team_id]
      team = SqlRunner.run(sql, values)
      return Team.new(team.first)
    end

    ### CLASS METHODS  ###

    def self.all()
        sql = "SELECT * FROM drivers;"
        drivers = SqlRunner.run( sql )
        return drivers.map { |driver| Driver.new( driver ) }
      end
    
      def self.find( id )
        sql = "SELECT * FROM drivers
        WHERE id = $1;"
        values = [id]
        drivers = SqlRunner.run( sql, values )
        return Driver.new( drivers.first ) if drivers.ntuples > 0
        return nil
      end
    
      def self.delete_all
        sql = "DELETE FROM drivers;"
        SqlRunner.run( sql )
      end


end