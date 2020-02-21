require 'pry'

#helper methods
# def iterate_through_season(season, value)
#   season.each do |contestant_hash| #undefined method `each' for nil:NilClass
#     contestant_hash.select do |contestant, name|
#       contestant[value] if contestant[:name] == name #TypeError: no implicit conversion of Symbol into Integer
#     end
#   end
  
  
# end

def all_contestants_ever(bachelor)
  bachelor.values.flatten
end
####################

def get_first_name_of_season_winner(bachelor, season)

#binding.pry

  winner = bachelor[season].find do |contestant|
    contestant["status"].downcase == "Winner".downcase
  end
  winner["name"].split.first
end
  # bachelor.each do |season_name, contestant_data|
  #   contestant_data.each do |name|
  #     return contestant_data[:name] if name[:state] == "Winner"  
  #   end
  #   binding.pry

   

  # bachelor.each do |season, winner|
  #   if season == "season 10"
  #     winner[:status].find |season_winner|
  #       season_winner[:name].split if season_winner[:status] == "Winner"
  #     end
  #   end

def get_contestant_name(bachelor, occupation)
  bachelor.each do |season, contestant_data|
    contestant_data.each do |contestant|
      contestant.each do |key,value|
        if value == occupation
          return contestant["name"]
        end
      end
    end
  end
end
  # all_contestants_ever = bachelor.values.flatten
  # contestant_with_occupation = all_contestants_ever.find do |contestant|
    # contestant["occupation"] == occupation
  # end
  # bachelor.each do |season, contestant_data|
  #   contestant_data.each do |contestant|
  #     contestant.each |job|
  #     if job == occupation
  #       return contestant["name"]
  #     end
  #   end
  # end


def count_contestants_by_hometown(bachelor, hometown)
  counter = 0
  all_contestants_ever(bachelor).each do |contestant|
    if contestant["hometown"] == hometown
      counter += 1
    end
  end
  counter
end

def get_occupation(bachelor, hometown)
  # code here
end

def get_average_age_for_season(bachelor, season)
  # code here
end
