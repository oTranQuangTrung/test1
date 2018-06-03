class Report1Controller < ApplicationController
  def index
    data = RetrieveData.new("http://localhost:3000/report").http_get
    @reports = JSON.parse(data, object_class: OpenStruct).data
  end
end
