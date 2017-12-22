def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_stats|
    if contestant_stats["status"].downcase=="winner"
      return contestant_stats["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,contestants|
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
