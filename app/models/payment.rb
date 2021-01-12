class Payment < ApplicationRecord
  validates :amount, :numericality => {:only_integer => true}
  validates_presence_of :to_from
  validates_presence_of :date
  validates_presence_of :amount
  validates_presence_of :purpose
  validates_date :date,  on_or_before: :today
end