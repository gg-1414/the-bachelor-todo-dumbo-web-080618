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
  count = 0 
  data.each do |season_num, season_data|
    season_data.each do |contestant_info|
      if contestant_info["hometown"] == hometown 
        count += 1 
      end 
    end 
  end 
  count
end

def get_occupation(data, hometown)
  occupation = ""
  data.map do |season_num, season_data|
    season_data.each do |contestant_info|
      if contestant_info["hometown"] == hometown 
        occupation = contestant_info["occupation"]
        return occupation
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  season_ages = []
  data.each do |season_num, season_data|
    if season_num == season 
      season_data.map do |contestant_info|
        season_ages << contestant_info["age"].to_i
      end 
    end 
  end 
end
