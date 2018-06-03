class BaseService
  def initialize url
    @url = url
  end

  private
  def succeed? res
    res.code.eql? "200"
  end

  def blank_response
    "{}"
  end
end
