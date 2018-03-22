class Reservation < ActiveRecord::Base
  belongs_to :listing
  has_many :reviews
  belongs_to :guest, :class_name => "User"
  # belongs_to :hosts, :through :listings           #  <========added this
end
