require_relative('../models/team')
require_relative('../models/driver')
require_relative('../models/race')
require_relative('../models/result')

require('pry')

Driver.delete_all
Team.delete_all
Race.delete_all


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

lewis = Driver.new( 'first_name' => 'Lewis', 'last_name' => 'Hamilton', 'team_id' => mercedes.id )
valtteri = Driver.new( 'first_name' => 'Valtteri', 'last_name' => 'Bottas', 'team_id' => mercedes.id )
danny = Driver.new( 'first_name' => 'Daniel', 'last_name' => 'Ricardo', 'team_id' => renault.id )
sebastian = Driver.new( 'first_name' => 'Sebastian', 'last_name' => 'Vettel', 'team_id' => ferari.id )
nico = Driver.new( 'first_name' => 'Nico', 'last_name' => 'Hulkenberg', 'team_id' => renault.id )

lewis.save()
valtteri.save()
danny.save()
sebastian.save()
nico.save()


australia = Race.new( 'location' => 'Australia', 'date' => '19/02/20')
monaco = Race.new( 'location' => 'Monaco', 'date' => '19/02/20')
france = Race.new( 'location' => 'France', 'date' => '19/02/20')
uk = Race.new( 'location' => 'United Kingdom', 'date' => '19/02/20')
italy = Race.new( 'location' => 'Italy', 'date' => '19/02/20')

australia.save()
monaco.save()
france.save()
uk.save()
italy.save()


drivers = Driver.all()
teams = Team.all()
races = Race.all()

result1 = Result.new( 'position' => 2, 'driver_id' => lewis.id, 'race_id' => australia.id )
result2 = Result.new( 'position' => 1, 'driver_id' => valtteri.id, 'race_id' => australia.id )
result3 = Result.new( 'position' => 4, 'driver_id' => sebastian.id, 'race_id' => australia.id )
result4 = Result.new( 'position' => 2, 'driver_id' => lewis.id, 'race_id' => italy.id )

result1.save()
result2.save()
result3.save()
result4.save()



binding.pry
nil