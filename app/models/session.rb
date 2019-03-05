class Session < ApplicationRecord
  belongs_to :theatre
  belongs_to :film
end
