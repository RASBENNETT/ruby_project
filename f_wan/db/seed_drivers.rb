require_relative('../models/driver')

driver1 = Driver.new( 'first_name' => 'Lewis', 'last_name' => 'Hamilton')
driver2 = Driver.new( 'first_name' => 'Valteri', 'last_name' => 'Bottas')
driver3 = Driver.new( 'first_name' => 'Daniel', 'last_name' => 'Ricardo')
driver4 = Driver.new( 'first_name' => 'Sebastian', 'last_name' => 'Vettel')
driver5 = Driver.new( 'first_name' => 'Nico', 'last_name' => 'Hulkenberg')

driver1.save()
driver2.save()
driver3.save()
driver4.save()
driver5.save()