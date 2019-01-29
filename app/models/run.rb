class Run < ApplicationRecord
  belongs_to :user

  validates :user, presence:true
  validates :Run_Type, presence:true
  validates :Location, presence:true
  validates :Start_Time, presence:true
  validates :Pace, presence:true, length: {maximum: 5}
  validates :Miles, presence:true, length: {maximum: 5}
  validates :Run_Date, presence:true
end
