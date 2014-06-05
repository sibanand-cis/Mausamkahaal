require 'unirest'


class Mausamkahaal

  def initialize(location)
    @base_addr = "https://george-vustrey-weather.p.mashape.com/api.php"
    @location = location
  end

  def this_week_report
    response =  Unirest.get "#{@base_addr}", headers: {"X-Mashape-Authorization" => "8hZnbewymZYsa7TJPte9npcyAkNQ89Ou"},parameters:{location: @location}
    @weekly_report = response.body
  end
end