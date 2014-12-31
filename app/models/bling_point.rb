class BlingPoint < ActiveRecord::Base
  def percent
    value / 5000.0 * 100.0
  end
end
