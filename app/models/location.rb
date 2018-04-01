class Location < ApplicationRecord
  validates :formatted_address, {
    presence: true }
  validates :latitude, {
    numericality: true,
    presence: true,
    uniqueness: {
      message: "That combination of latitude and longitude already exist.",
      scope: :longitude } }
  validates :longitude, {
    numericality: true,
    presence: true }
end
