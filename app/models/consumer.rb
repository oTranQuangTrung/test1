class Consumer
  class << self
    def consume
      ActiveRecord::Base.transaction do
        seed = Seed.un_consumed.first
        Fruit.create! seed: seed
        seed.update_attributes! consumed: true
      end
    rescue ActiveRecord::RecordInvalid
      puts "handle exception"
    end

    def data_for_report
      Seed.includes(:fruit).consumed.map {|seed| seed.serializable_hash}
    end
  end
end
