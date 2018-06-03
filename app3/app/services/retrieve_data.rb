class RetrieveData < BaseService
  def http_get
    url = URI.parse @url
    res = Net::HTTP.start(url.host, url.port) do |http|
      http.request Net::HTTP::Get.new url.to_s
    end
    return res.body if succeed? res
    blank_response
  end
end
