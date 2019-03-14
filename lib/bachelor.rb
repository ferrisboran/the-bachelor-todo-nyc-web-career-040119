def get_first_name_of_season_winner(data, season)
  data[season].each do |chick|
    if chick["status"] == "Winner"
      return chick["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, chick|
    chick.each do |key|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  population = 0
  data.each do |season, chick|
    chick.each do |key|
      if key["hometown"] == hometown
        population += 1
      end
    end
  end
  population
end

def get_occupation(data, hometown)
  data.each do |season, chick|
    chick.each do |key|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = 0
  i = 0
  data[season].each do |chick|
    average_age += (chick["age"]).to_i
    i += 1
  end
  return (average_age / i).round(0)
end
