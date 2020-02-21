require 'pry'

#helper methods
def iterate_through_season(season, value)
  season.each do |contestant_hash| #undefined method `each' for nil:NilClass
    contestant_hash.select do |contestant, name|
      return contestant[value] if contestant[value] == name #TypeError: no implicit conversion of Symbol into Integer
    end
  end
end

####################

def get_first_name_of_season_winner(season, data)
  iterate_through_season(season, data)
  # data[season].each do |contestant_hash|
  #   if contestant_hash["status"] == "Winner"
  #     return contestant_hash["name"].split(" ").first
  #   end
  # end
end
  # data.each do |season_name, contestant_data|
  #   contestant_data.each do |name|
  #     return contestant_data[:name] if name[:state] == "Winner"  
  #   end
  #   binding.pry

   

  # data.each do |season, winner|
  #   if season == "season 10"
  #     winner[:status].find |season_winner|
  #       season_winner[:name].split if season_winner[:status] == "Winner"
  #     end
  #   end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      contestant.each do |key,value|
        if value == occupation
          return contestant["name"]
        end
      end
    end
  end
  
  # data.each do |season, contestant_data|
  #   contestant_data.each do |contestant|
  #     contestant.each |job|
  #     if job == occupation
  #       return contestant["name"]
  #     end
  #   end
  # end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
