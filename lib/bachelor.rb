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
        return key["name"].split(" ").first
      end
    end
  end
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
