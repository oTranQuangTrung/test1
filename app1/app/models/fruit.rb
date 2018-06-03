class Fruit < ApplicationRecord
  belongs_to :seed

  before_create :init

  def attributes
    {
      name: name
    }
  end

  private
  def init
    self.name = "f-#{rand}"
  end
end
