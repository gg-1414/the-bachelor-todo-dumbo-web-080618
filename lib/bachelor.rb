def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_num, season_data|
    if season_num == season 
      season_data.each do |contestant_info|
        if contestant_info["status"] == "Winner"
          winner = contestant_info["name"].split
        end 
      end 
    end 
  end 
  winner.pop
  winner.join("")
end

def get_contestant_name(data, occupation)
  data.each do |season_num, season_data|
    season_data.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
