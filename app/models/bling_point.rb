class BlingPoint < ActiveRecord::Base
  def percent
    value / 8000.0 * 100.0
  end
end
