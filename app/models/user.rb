class User < ActiveRecord::Base
  has_many :reservations, :foreign_key => 'guest_id'
  # has_many :reservations, :foreign_key => 'host_id'    # <--------added this
  has_many :reservations, through: :listings
  has_many :listings, :foreign_key => 'guest_id'
  has_many :listings, :foreign_key => 'host_id'
  has_many :reviews, :foreign_key => 'guest_id'

  has_many :trips do
    self.reservations.map do |trip|
      trip.guest_id == self.id
    end
  end

end
