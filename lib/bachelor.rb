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
  total_ages = 0
  total_chicks = 0
  data[season].each do |chick|
    total_ages += (chick["age"]).to_i
    total_chicks += 1
  end
  puts total_ages
  puts total_chicks
  puts (total_ages.to_f/total_chicks.to_f).ceil
end
