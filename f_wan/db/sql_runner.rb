require('pg')

class SqlRunner

    def initialize( sql, values = [] )
        begin
            db = PG.connect( 'database' => 'f_wan', 'host' => 'localhost')
            db.prepare("query", sql)
            result = db.exec_prepared( "query", values )
        ensure
            db.close() if db != nil
        end
        return result
    end


end