require_relative('../models/race')
require('pry')

Race.delete_all

race1 = Race.new( 'location' => 'Australia', 'date' => '19/02/20')
race2 = Race.new( 'location' => 'Monaco', 'date' => '19/02/20')
race3 = Race.new( 'location' => 'France', 'date' => '19/02/20')
race4 = Race.new( 'location' => 'United Kingdom', 'date' => '19/02/20')
race5 = Race.new( 'location' => 'Italy', 'date' => '19/02/20')

race1.save()
race2.save()
race3.save()
race4.save()
race5.save()

# lewis = race.find('1')

binding.pry
nil