class Wallet < ActiveRecord::Base

  def self.total
    self.count
  end

  def self.amount
    self.all.reduce(0){|sum, fund| sum + fund.amount.to_d}
  end

  def self.max
    self.max.amount
  end
end
