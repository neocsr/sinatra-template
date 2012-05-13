class Counter
  include Mongoid::Document
  include Mongoid::Timestamps

  field :count, :type => Integer

  def self.increment
    c = first || new({:count => 0})
    c.inc(:count, 1)
    c.save
    c.count
  end
end