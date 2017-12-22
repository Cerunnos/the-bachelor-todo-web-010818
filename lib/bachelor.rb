def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_stats|
    if contestant_stats["status"].downcase=="winner"
      return contestant_stats["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,contestant|
    contestant.each do |contestant_stats|
      if contestant_stats["occupation"] == occupation
        return contestant_stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count=0
  data.each do |season, contestant|
    contestant.each do|contestant_stats|
      if contestant_stats["hometown"]==hometown
        count+=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |data,contestant|
    contestant.each do |contestant_stats|
      if contestant_stats["hometown"]==hometown
        return contestant_stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age=0
  contenstant_num=0
  data[season].each do |contestants|
    age+=contestants["age"].to_i
  end
end
