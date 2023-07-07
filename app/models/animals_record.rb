class AnimalsRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :dogs }
end
