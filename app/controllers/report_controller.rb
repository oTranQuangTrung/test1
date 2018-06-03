class ReportController < ApplicationController
  def index
    render json: {data: Consumer.data_for_report}, status: 200
  end
end
