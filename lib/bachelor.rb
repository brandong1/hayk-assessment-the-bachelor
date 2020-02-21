require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split(" ").first
    end
  end
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
  # code here
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
