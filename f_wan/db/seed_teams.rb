require_relative('../models/team')
require_relative('../models/driver')

require('pry')

Team.delete_all
Driver.delete_all

mercedes = Team.new( 'name' => 'Mercedes')
red_bull = Team.new( 'name' => 'Red Bull')
ferari = Team.new( 'name' => 'Ferari')
haas = Team.new( 'name' => 'Haas')
renault = Team.new( 'name' => 'Renault')

mercedes.save()
red_bull.save()
ferari.save()
haas.save()
renault.save()

driver1 = Driver.new( 'first_name' => 'Lewis', 'last_name' => 'Hamilton', 'team_id' => mercedes.id)
driver2 = Driver.new( 'first_name' => 'Valteri', 'last_name' => 'Bottas', 'team_id' => mercedes.id)
driver3 = Driver.new( 'first_name' => 'Daniel', 'last_name' => 'Ricardo', 'team_id' => renault.id)
driver4 = Driver.new( 'first_name' => 'Sebastian', 'last_name' => 'Vettel', 'team_id' => ferari.id)
driver5 = Driver.new( 'first_name' => 'Nico', 'last_name' => 'Hulkenberg', 'team_id' => renault.id )

driver1.save()
driver2.save()
driver3.save()
driver4.save()
driver5.save()

# lewis = Driver.find('1')

binding.pry
nil


binding.pry
nil