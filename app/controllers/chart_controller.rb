class ChartController < ApplicationController

  def statusboard
    location = Location.new
    @locations = location.fetch_locations

    render :json => {
                      "graph" => {
                        "title" => "World Wide Friends",
                        "refreshEveryNSeconds" => 10,
                        "total" => true,
                        "xAxis" => {
                          "showEveryLabel" => true
                        },
                        "datasequences" => [
                         {
                         "title" => "Top 10 Cities",
                          "datapoints" => @locations
                         },
                        ]
                      }
    }
  end

  def morris
    location = Location.new
    @locations = location.fetch_locations

    render :json => @locations
  end
end
