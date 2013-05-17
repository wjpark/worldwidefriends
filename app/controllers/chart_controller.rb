class ChartController < ApplicationController

  def statusboard

    facebook = Koala::Facebook::API.new(ENV['TOKEN'])
    friends = facebook.get_connections("me", "friends?fields=location")

    location_counts = Hash.new
    friends.each do |friend|
      # binding.pry
      if friend.has_key? "location"
        location = friend["location"]["name"]
        location_counts[location] ||= 0
        location_counts[location] += 1
      end
    end
    location_counts = location_counts.sort_by {|key, value| value}
    datapoints = Array.new
    datapoints = location_counts.collect do |item|
      {
        "title" => item[0],
        "value" => item[1]
      }
    end
    datapoints = datapoints.reverse[0..10]
    render :json => {
      "graph" => {
                  "title" => "World Wide Friends",
                  "xAxis" : {
                    "showEveryLabel" : true
                  },
                  "datasequences" => [
                   {
                   "title" => "Cities",
                  "datapoints" => datapoints
                   },
                 ]
      }
    }
  end
end
