class Seed < ApplicationRecord
  has_one :fruit

  before_create :init

  scope :un_consumed, -> {where(consumed: false).order("RANDOM()").limit(1)}
  scope :consumed, -> {where(consumed: true).order(created_at: :desc).limit(10)}

  def attributes
    {
      id: id,
      label: label,
      consumed: consumed,
      fruit: {
        name: fruit.name
      }
    }
  end

  private
  def init
    self.label = "2-#{rand}"
  end
end
