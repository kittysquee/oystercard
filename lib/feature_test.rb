require './lib/oystercard.rb'

card = Oystercard.new

card.top_up(10)
card.touch_in("entry_station")


require './lib/journey.rb'

journey = Journey.new
journey.entry_station("entry_station")
journey.fare
