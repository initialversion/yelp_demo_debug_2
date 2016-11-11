class City < ApplicationRecord
  # Direct associations

  has_many   :neighborhoods,
             :dependent => :nullify

  # Indirect associations

  has_one    :restaurants,
             :through => :neighborhoods,
             :source => :restaurants

  # Validations

end
